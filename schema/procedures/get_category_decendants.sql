CREATE OR REPLACE FUNCTION get_category_descendants(p_category_id INTEGER)
RETURNS TABLE (id INTEGER, description TEXT)
AS $$
BEGIN
  RETURN QUERY
    WITH RECURSIVE category_descendants AS (
      SELECT id, description, parent_category_id
      FROM category
      WHERE id = p_category_id
    UNION ALL
      SELECT c.id, c.description, c.parent_category_id
      FROM category_descendants cd
      JOIN category c ON cd.id = c.parent_category_id
    )
    SELECT id, description
    FROM category_descendants;
END;
$$ LANGUAGE plpgsql;