  CREATE TABLE IF NOT EXISTS account_upload_config (
      id serial PRIMARY KEY,
      account_id integer REFERENCES account(id) NOT NULL,
      entry_date_index integer not null,
      payee_name_index integer not null,
      amount_index integer not null,
        created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  

    );

ALTER TABLE account_upload_config 
ADD COLUMN IF NOT EXISTS sample_file_json json;
