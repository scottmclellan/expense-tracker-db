CREATE TABLE IF NOT EXISTS category (
      id serial PRIMARY KEY,
      description text NOT NULL,
      parent_category_id integer REFERENCES category(id)
    );