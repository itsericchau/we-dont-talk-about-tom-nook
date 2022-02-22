CREATE DATABASE we_hate_tom_nook_db;
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT,
    email TEXT,
    password_digest TEXT
);