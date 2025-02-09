DROP TABLE IF EXISTS customers; -- Drop the table if it exists

CREATE TABLE IF NOT EXISTS customers ( -- Create the table if it does not exist
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    creeated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

-- serial = auto increment in PostgreSQL 
-- primary key = unique identifier
-- varchar = string (variable character)
-- not null = required 
-- timestamp = date and time
-- default = default value
-- current_timestamp = current date and time or can use now()
-- psql -f scripts/1-create-table.sql -d databasestudy - 