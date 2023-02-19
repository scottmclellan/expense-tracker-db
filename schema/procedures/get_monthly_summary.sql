CREATE OR REPLACE FUNCTION get_monthly_summary(IN p_month INTEGER, IN p_year INTEGER)
RETURNS TABLE (category_id INTEGER, category_description TEXT, amount NUMERIC)
AS $$
BEGIN
  RETURN QUERY 

    select c.id category_id, c.description category, SUM(e.amount)
    from entry e 
        inner join payee p on e.payee_id = p.id
        inner join account a on e.account_id = a.id
        inner join category c on e.category_id = c.id
    where extract(month from e.entry_date) = p_month and extract(year from e.entry_date) = p_year
    GROUP BY c.id, c.description;
END;
$$ LANGUAGE plpgsql;


