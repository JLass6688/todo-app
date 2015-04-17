

CREATE DATABASE all_the_todos;

\c all_the_todos;

CREATE TABLE todos (id SERIAL PRIMARY KEY, task VARCHAR(500), complete BOOLEAN, due_date TIMESTAMP);
