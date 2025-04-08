-- Active: 1744084622603@@127.0.0.1@3306

-- 1.
CREATE TABLE zoo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eat TEXT NOT NULL,
    weight INTEGER NOT NULL,
    height INTEGER NOT NULL,
    age INTEGER NOT NULL
);

INSERT INTO zoo (name, eat, weight, height, age)
VALUES 
    ('Lion', 'Meat', 200, 120, 5),
    ('Lion2', 'Meat1', 1200, 1120, 15),
    ('Lion3', 'Meat2', 2200, 2120, 25),
    ('Lion4', 'Meat3', 3200, 3120, 35),
    ('Lion5', 'Meat4', 4200, 4120, 45);

SELECT * FROM zoo;