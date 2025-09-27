#Modifying or Formatting Customer table
SELECT * FROM customer LIMIT 3;

ALTER TABLE customer
MODIFY COLUMN customer_since DATE;

ALTER TABLE customer
MODIFY COLUMN birthdate DATE;

ALTER TABLE customer
RENAME COLUMN `customer_first-name` to cust_name;

ALTER TABLE customer
DROP COLUMN birth_year;

#Modifying or Formatting Dates table
SELECT * FROM dates LIMIT 5;

DROP TABLE dates;

#Modifying or Formatting pastry_inventory table
SELECT * FROM pastry_inventory LIMIT 10;

ALTER TABLE pastry_inventory
MODIFY COLUMN transaction_date DATE;

#Modifying or Formatting product table
SELECT * FROM product LIMIT 10;

#Modifying or Formatting sales table
SELECT * FROM sales LIMIT 10;

ALTER TABLE sales
RENAME COLUMN `order` to order_;

ALTER TABLE sales
MODIFY COLUMN transaction_date DATE;

ALTER TABLE sales
MODIFY COLUMN transaction_time TIME;
DELETE FROM sales
WHERE customer_id=0;
SELECT * FROM sales_outlet LIMIT 10;
SELECT * FROM sales_targets LIMIT 10;

##Modifying or Formatting staff table
SELECT * FROM staff;

ALTER TABLE staff
MODIFY COLUMN start_date DATE;

SELECT COUNT(transaction_id),COUNT(DISTINCT transaction_id)  FROM sales;

SELECT * FROM pastry_inventory;

SELECT * FROM sales;

SELECT * FROM customer;











