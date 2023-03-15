 CREATE TABLE IF NOT EXISTS entry (
      id serial PRIMARY KEY,     
      payee_id integer REFERENCES payee(id) NOT NULL,
      amount numeric NOT NULL,
      category_id integer REFERENCES category(id) NOT NULL,
      entry_date date NOT NULL,
      memo text
    );

    ALTER TABLE entry
ADD COLUMN IF NOT EXISTS bank_entry_id INTEGER REFERENCES bank_entry(id) NOT NULL;