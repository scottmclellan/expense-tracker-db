  CREATE TABLE IF NOT EXISTS payee (
      id serial PRIMARY KEY,
      name text NOT NULL,
      memo text NOT NULL,
      default_category_id integer REFERENCES category(id) NULL,
      created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP      
    );



ALTER TABLE payee ADD COLUMN IF NOT EXISTS default_category_id INTEGER REFERENCES category(id) NULL;
    
ALTER TABLE payee ADD COLUMN IF NOT EXISTS created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
    