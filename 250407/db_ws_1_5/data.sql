-- Active: 1744003065420@@127.0.0.1@3306
-- 1.
SELECT *
FROM users
WHERE age >= 30 AND balance >= 1000;

--2.
SELECT *
FROM users
WHERE balance <= 1000 AND age <= 20;

--3.
SELECT *
FROM users
WHERE first_name LIKE '현%' AND country IS '제주특별자치도'
ORDER BY age DESC
LIMIT 1;

--4.
SELECT *
FROM users
WHERE last_name = '박' AND age >= 25
ORDER BY age 
LIMIT 1;

--5.
SELECT *
FROM users
WHERE first_name = '재은' OR first_name = '영일'
ORDER BY balance DESC
LIMIT 1;

--6.
SELECT *
FROM users AS u
WHERE balance = (
    SELECT MAX(balance) 
    FROM users
    WHERE country = u.country
)
GROUP BY country
ORDER BY balance DESC;

--7.
SELECT *
FROM users u
WHERE balance > (
    SELECT AVG(balance)
    FROM users
    WHERE u.age >= 30
);
