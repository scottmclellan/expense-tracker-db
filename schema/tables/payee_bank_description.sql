 CREATE TABLE IF NOT EXISTS payee_bank_description (
      id serial PRIMARY KEY,    
      payee_id integer REFERENCES payee(id) NOT NULL,
      bank_description TEXT NOT NULL,
      createddate TIMESTAMP DEFAULT CURRENT_TIMESTAMP      
    );