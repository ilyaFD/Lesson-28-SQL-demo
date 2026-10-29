CREATE TABLE sales
(
	id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	product VARCHAR (255),
	price INTEGER,
	quantity INTEGER
);

INSERT INTO sales (product, price, quantity)
VALUES
	('Laptop', 1000, 5),
	('Phone', 700, 3),
	('Tablet', 500, 2),
	('Printer', 400, 4);

SELECT * FROM sales;

SELECT * FROM sales
LIMIT 2;

SELECT SUM(price) as total_price 
FROM sales;


SELECT 	
	product, COUNT(*) AS product_count, 
	AVG(price) AS average_price
FROM sales
GROUP BY product;


