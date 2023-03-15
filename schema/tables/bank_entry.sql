 CREATE TABLE IF NOT EXISTS bank_entry (
      id serial PRIMARY KEY,
      account_id integer references account(id) NOT NULL,
      entry_date date not null,
      payee_name text not null,
      amount numeric not null,
      created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );