-- Active: 1744082288234@@127.0.0.1@3306

-- 1.
SELECT * FROM artists;

-- 2.
SELECT COUNT(*) FROM artists;

-- 3.
SELECT * 
FROM artists
WHERE Name = 'AC/DC';

-- 4.
SELECT artistid, Name
FROM artists;

-- 5.
SELECT *
FROM artists
WHERE
    Name IN ('Gilberto Gil', 'Ed Motta');

-- 6.
SELECT *
FROM artists
ORDER BY Name DESC;

-- 7.
SELECT *
FROM artists
WHERE Name LIKE 'Vinícius%'
LIMIT 2;

-- 8.
SELECT ArtistId
FROM artists
WHERE ArtistId BETWEEN 50 AND 70;
