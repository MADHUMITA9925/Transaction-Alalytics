CREATE DATABASE credit_card_db;
USE credit_card_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    card_type VARCHAR(30)
);

CREATE TABLE merchants (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(100),
    merchant_category VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    merchant_id INT,
    transaction_date DATETIME,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_method VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (merchant_id) REFERENCES merchants(merchant_id)
);

INSERT INTO customers VALUES
(1,'Rahul Sharma','Male','Mumbai','Platinum'),
(2,'Priya Verma','Female','Delhi','Gold'),
(3,'Amit Patel','Male','Pune','Silver'),
(4,'Sneha Joshi','Female','Bangalore','Gold'),
(5,'Rohan Gupta','Male','Hyderabad','Platinum');

INSERT INTO merchants VALUES
(101,'Amazon','E-commerce','Bangalore'),
(102,'Reliance Fresh','Retail','Mumbai'),
(103,'Indian Oil','Fuel','Delhi'),
(104,'Apollo Pharmacy','Healthcare','Pune'),
(105,'BookMyShow','Entertainment','Mumbai');

INSERT INTO transactions VALUES
(1001,1,101,'2025-01-05 10:15:00',4500,'Success','Credit Card'),
(1002,2,102,'2025-01-05 13:45:00',1800,'Success','Credit Card'),
(1003,3,103,'2025-01-06 08:20:00',3200,'Failed','Credit Card'),
(1004,4,104,'2025-01-06 17:10:00',950,'Success','Credit Card'),
(1005,5,105,'2025-01-07 20:30:00',2200,'Success','Credit card');

SELECT*FROM customers;
SELECT*FROM merchants;
SELECT*FROM transactions;