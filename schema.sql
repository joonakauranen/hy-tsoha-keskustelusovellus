CREATE TABLE topics (
    id SERIAL PRIMARY KEY,
    topic TEXT,
    created_at TIMESTAMP,
    created_by INTEGER REFERENCES users,
    user_id INTEGER
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    password TEXT,
    role TEXT
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    content TEXT,
    created_at TIMESTAMP,
    created_by INTEGER REFERENCES users,
    topic_id INTEGER REFERENCES topics
);

CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    content TEXT,
    juser INTEGER REFERENCES users,
    topic_id INTEGER REFERENCES topics
);

CREATE TABLE points (
    id SERIAL PRIMARY KEY,
    juser INTEGER REFERENCES users,
    points INTEGER
);