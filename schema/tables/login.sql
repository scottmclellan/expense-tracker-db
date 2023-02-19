CREATE TABLE IF NOT EXISTS login (
      id serial PRIMARY KEY,
      first_name text NOT NULL,
      last_name text NOT NULL,
      email text NOT NULL,
      password text NOT NULL,
      createddate TIMESTAMP DEFAULT CURRENT_TIMESTAMP      
    );

    