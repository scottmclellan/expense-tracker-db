CREATE TABLE IF NOT EXISTS category_budget (
  id serial PRIMARY KEY,
  category_id integer REFERENCES category(id) NOT NULL,
  budget_amount numeric NOT NULL,
  start_date date NOT NULL,
  end_date date,
  duration_code character(1) REFERENCES budget_duration(duration_code) NOT NULL
);
