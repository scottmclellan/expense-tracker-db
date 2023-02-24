CREATE TABLE IF NOT EXISTS login_history (
      id serial PRIMARY KEY,
      login_id integer REFERENCES login(id) NOT NULL,
      action text not null,
      createddate TIMESTAMP DEFAULT CURRENT_TIMESTAMP      
    );

    