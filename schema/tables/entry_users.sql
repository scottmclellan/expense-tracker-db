CREATE TABLE IF NOT EXISTS entry_users (
  entry_id integer REFERENCES entry(id) NOT NULL,
  entry_user_id integer REFERENCES entry_user(id) NOT NULL,
  PRIMARY KEY (entry_id, user_id)
);