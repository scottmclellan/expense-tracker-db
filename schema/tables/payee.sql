  CREATE TABLE IF NOT EXISTS payee (
      id serial PRIMARY KEY,
      name text NOT NULL,
      memo text NOT NULL
    );