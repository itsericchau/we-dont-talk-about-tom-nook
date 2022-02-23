CREATE DATABASE we_hate_tom_nook_db;
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT,
    email TEXT,
    password_digest TEXT
);
CREATE TABLE bugs(
    bug_id SERIAL PRIMARY KEY,
    bug_name TEXT,
    icon_url TEXT
);