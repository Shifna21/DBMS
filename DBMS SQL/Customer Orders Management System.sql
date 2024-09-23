create database Customer_Orders_Management_System;
use Customer_Orders_Management_System;
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(10)
);
show tables;
describe customers;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL,
    customer_id INT,
    FOREIGN KEY (customer_id)REFERENCES Customers(customer_id)
);
describe orders;
insert into customers values (1,'ammu','ammu@gmail.com',8281752486),
							(2,'NItara','nitara@gmail.com',5432787654),
                            (3,'aji','aji@gmail.com',7548932145);
insert into orders values(101,'2008-11-11',20000,1),
                          (124,'2010-12-10',50050,2),
                          (564,'2024-10-8',120000,3),
                          (784,'2023-12-4',2000,2),
                          (865,'2002-10-25',50000,1);
SELECT*FROM orders;
SELECT * FROM customers;
SELECT customers.customer_name, Orders.amount
FROM customers
JOIN orders ON customers.customer_name = orders.amount;
    
UPDATE customers 
SET customer_name = 'ALICE'
WHERE customer_id = 2;

describe customers;
select*from customers;

UPDATE Orders 
SET amount = amount * 1.10
WHERE customer_id = 2;