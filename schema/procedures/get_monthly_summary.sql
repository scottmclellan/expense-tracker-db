CREATE OR REPLACE FUNCTION get_monthly_summary(IN p_month INTEGER, IN p_year INTEGER)
RETURNS TABLE (account_name TEXT, payee_name TEXT, category TEXT, amount NUMERIC, entry_date DATE)
AS $$
BEGIN
  RETURN QUERY
    select a.name account_name, p.name payee_name, c.description category, e.amount, e.entry_date
    from entry e 
        inner join payee p on e.payee_id = p.id
        inner join account a on e.account_id = a.id
        inner join category c on e.category_id = c.id
    where extract(month from e.entry_date) = p_month and extract(year from e.entry_date) = p_year;
END;
$$ LANGUAGE plpgsql;