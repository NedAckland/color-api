create database colors_api;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password TEXT,
    api_key TEXT
);

-- have not yet added names to palettes
CREATE TABLE palettes (
    id SERIAL PRIMARY KEY,
    primary_color_hex TEXT,
    secondary_color_hex TEXT,
    tertiary_color_hex TEXT,
    quaternary_color_hex TEXT,
    quinary_color_hex TEXT
);

CREATE TABLE favourites (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    palette_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE colors (
    id SERIAL PRIMARY KEY,
    color_name TEXT,
    color_hex TEXT
);