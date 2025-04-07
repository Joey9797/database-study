-- 01. Querying data
SELECT 
  LastName
FROM
  employees;

SELECT LastName, FirstName
FROM employees;

SELECT *
From employees;

SELECT FirstName AS '이름'
FROM employees;

SELECT 
  Name, 
  Milliseconds / 60000 AS '재생시간(분)'
FROM
  tracks;

-- 02. Sorting data (오름차순)
SELECT 
  FirstName
FROM
  employees
ORDER BY
  FirstName;

-- 02. Sorting data (내림차순)
SELECT 
  FirstName
FROM
  employees
ORDER BY
  FirstName DESC;

SELECT 
  Country, City
FROM 
  customers
ORDER BY 
  Country DESC, 
  City;

SELECT 
  Name, 
  Milliseconds / 60000
FROM 
  tracks
ORDER BY 
  Milliseconds DESC; 


-- NULL 정렬 예시
SELECT 
  postalCode
FROM
  customers
ORDER BY
  postalCode;

-- 03. Filtering data
SELECT DISTINCT
  Country
FROM
  customers
ORDER BY
  Country;

SELECT
  LastName, FirstName, City
From
  customers
WHERE
  City = 'Prague';

SELECT
  LastName, FirstName, Country, Company
From
  customers
WHERE
  Company IS NULL and Country = 'USA';


SELECT
  Bytes
FROM
  tracks
WHERE
  Bytes BETWEEN 10000 AND 500000;

-- 조회 범위 설정 2
SELECT
  Bytes
FROM
  tracks
WHERE
  Bytes >= 10000 
  AND Bytes <= 500000;

SELECT
  Bytes
FROM
  tracks
WHERE
  Bytes >= 10000 
  AND Bytes <= 500000;
ORDER BY
  Bytes;

SELECT
  LastName, FirstName, Country
FROM
  customers
WHERE
  Country IN ('Canada', 'Germany', 'France');


SELECT
  LastName, FirstName
FROM
  customers
WHERE
  LastName LIKE '%son';


SELECT
  LastName, FirstName
FROM
  customers
WHERE
  FirstName LIKE '___a';
  


SELECT
  TrackId, Name, Bytes
FROM
  tracks
ORDER BY
 Bytes DESC
LIMIT 7;

SELECT
  TrackId, Name, Bytes
FROM
  tracks
ORDER BY
 Bytes DESC
LIMIT 3, 4;



-- 04. Grouping data


SELECT
  Country
FROM
  customers
GROUP BY
  Country;
