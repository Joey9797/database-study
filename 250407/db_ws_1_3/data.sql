-- Active: 1743997231781@@127.0.0.1@3306
SELECT *
FROM users
WHERE first_name LIKE '하%';

SELECT *
FROM users
WHERE phone LIKE '%555';

SELECT *
FROM users
WHERE country LIKE '경상%';

SELECT *
FROM users
WHERE
    (country LIKE '경%' OR country LIKE '충%')
    AND country LIKE '__남%';