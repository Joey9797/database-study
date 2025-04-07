-- Active: 1744005423523@@127.0.0.1@3306
--1.
SELECT *
from tracks;

--2.
SELECT Name, Milliseconds, UnitPrice
from tracks;

--3.
SELECT *
FROM tracks
WHERE GenreId = 1;

--4.
SELECT *
FROM tracks
ORDER BY Name;

--5.
SELECT *
FROM tracks
LIMIT 10;