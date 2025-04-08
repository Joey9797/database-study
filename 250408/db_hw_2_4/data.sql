-- Active: 1744081009719@@127.0.0.1@3306
SELECT * FROM orders;
DROP TABLE orders;

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date DATE NOT NULL,
    total_amount REAL NOT NULL,
    customer_id INTEGER NOT NULL,
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

ALTER TABLE orders
ADD COLUMN price INTEGER NOT NULL DEFAULT 0;

ALTER TABLE orders
DROP COLUMN total_amount;

INSERT INTO orders (order_date, customer_id, price)
VALUES
    (date(), 1, 50),
    (date(), 2, 75),
    (date(), 3, 30);

SELECT orders.order_id, customers.name, orders.order_date, orders.price
FROM orders
INNER JOIN customers
    ON orders.customer_id = customers.customer_id;
