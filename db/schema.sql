CREATE DATABASE we_hate_tom_nook_db;
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT,
    email TEXT,
    password_digest TEXT
);
CREATE TABLE item_type(id SERIAL PRIMARY KEY, name TEXT);
INSERT INTO item_type(name)
VALUES('arts'),
    ('bugs'),
    ('fishes'),
    ('fossils'),
    ('sea_creatures'),
    ('songs'),
    ('villagers');
-- CREATE TABLE bugs(id SERIAL PRIMARY KEY, bug_name TEXT);
CREATE TABLE user_items(
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    item_id INTEGER,
    item_type TEXT,
    favourited BOOLEAN,
    obtained BOOLEAN,
    wishlist BOOLEAN
);
-- INSERT INTO user_items(
--         user_id,
--         item_id,
--         item_type,
--         favourited,
--         obtained,
--         wishlist
--     )
-- VALUES(1, 1, 'bugs', true, true, true);
-- -- simple table
CREATE TABLE user_items(
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    item_id INTEGER,
    item_type TEXT,
    wishlist BOOLEAN
);