 CREATE TABLE IF NOT EXISTS entry (
      id serial PRIMARY KEY,
      account_id integer REFERENCES account(id) NOT NULL,
      payee text NOT NULL,
      amount numeric NOT NULL,
      category_id integer REFERENCES category(id) NOT NULL,
      entry_date date NOT NULL,
      memo text
    );