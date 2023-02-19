CREATE OR REPLACE FUNCTION get_category_descendants(p_category_id INTEGER)
RETURNS TABLE (id INTEGER, description TEXT, parent_category_id INTEGER, level INTEGER)
AS $$
BEGIN
  RETURN QUERY
    WITH RECURSIVE category_descendants AS (
      SELECT c1.id,c1.description, c1.parent_category_id, 1 level
      FROM category c1
      WHERE (p_category_id IS NOT NULL AND c1.id = p_category_id) OR (p_category_id IS NULL and c1.parent_category_id IS NULL)
    UNION ALL
      SELECT c.id, c.description, c.parent_category_id, cd.level + 1
      FROM category_descendants cd
      JOIN category c ON cd.id = c.parent_category_id
    )
    SELECT cd1.id, cd1.description, cd1.parent_category_id, cd1.level
    FROM category_descendants cd1;
END;
$$ LANGUAGE plpgsql;

