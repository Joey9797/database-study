-- Active: 1744090246473@@127.0.0.1@3306

SELECT * FROM hotels;

UPDATE hotels
SET grade = UPPER(grade);

SELECT grade FROM hotels;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE reservations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    room_num INTEGER,
    check_in TEXT NOT NULL,
    check_out TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    Foreign Key (room_num) REFERENCES hotels(room_num)
);

INSERT INTO customers (name, email)
VALUES
    ('홍길동', 'aaa@example.com'),
    ('박지영', 'bbb@example.com'),
    ('김미영', 'ccc@example.com'),
    ('이철수', 'ddd@example.com');

INSERT INTO reservations (customer_id, room_num, check_in, check_out)
VALUES
    (1, 101, date(), date()),
    (2, 202, date(), date()),
    (3, 303, date(), date()),
    (4, 404, date(), date());


SELECT * FROM customers;
SELECT * FROM reservations;