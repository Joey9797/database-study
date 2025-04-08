-- Active: 1744079589763@@127.0.0.1@3306

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date DATE NOT NULL,
    total_amount REAL NOT NULL
);

INSERT INTO orders (order_date, total_amount)
VALUES 
    (date(), 50.99),
    (date(), 75.5),
    (date(), 30.25);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT NOT NULL
);

INSERT INTO customers (name, email, phone)
VALUES
    ('허균', 'hhh@naver.com', '000-0000-0000'),
    ('김영희', 'kkk@naver.com', '111-1111-1111'),
    ('이철수', 'lll@naver.com', '222-2222-2222');

DELETE FROM orders
WHERE
    order_id = 3;

UPDATE customers
SET name = '홍길동'
WHERE customer_id = 1;


SELECT * FROM orders;
SELECT * FROM customers;



