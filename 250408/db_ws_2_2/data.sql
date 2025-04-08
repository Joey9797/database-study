-- Active: 1744089558875@@127.0.0.1@3306

-- 1.
ALTER TABLE zoo
ADD COLUMN species TEXT NOT NULL DEFAULT 'default_data';

-- 2.
UPDATE zoo SET species = 'Panthera leo' WHERE name = 'Lion';
UPDATE zoo SET species = 'Lozo' WHERE name = 'Elephant';
UPDATE zoo SET species = 'Gifaffa' WHERE name = 'Giraffe';
UPDATE zoo SET species = 'Cebus' WHERE name = 'Monkey';

-- 3.
UPDATE zoo SET height = height*2.54;

-- 4.
SELECT * FROM zoo;