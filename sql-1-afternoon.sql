CREATE TABLE person (
  person_id SERIAL,
  name VARCHAR(100),
  age INT,
  height INT,
  city VARCHAR(100),
  favorite_color VARCHAR(100)
  );
  
INSERT INTO person (
 name, 
 age,
 height, 
 city,
 favorite_color
) VALUES (
  'Kevin Pessetto', 31, 185, 'Dallas', 'Blurquoise'); 

  INSERT INTO person (
 name, 
 age,
 height, 
 city,
 favorite_color
) VALUES (
  'David Newman', 600, 600, 'Dallas', 'Gray'); 

  INSERT INTO person (
 name, 
 age,
 height, 
 city,
 favorite_color
) VALUES (
  'Rachel M', 700, 700, 'Dallas', 'Black'); 

  INSERT INTO person (
 name, 
 age,
 height, 
 city,
 favorite_color
) VALUES (
  'Mark Nagel', 800, 800, 'Dallas', 'Lightning'); 

  INSERT INTO person (
 name, 
 age,
 height, 
 city,
 favorite_color
) VALUES (
  'Chris Biediger', 900, 900, 'Dallas', 'Clear'); 

  SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age > 30 OR age <20;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'blue', 'green');

SELECT * FROM person
WHERE favorite_color IN ('yellow' || 'purple');


ORDERS SECTION
CREATE TABLE orders (
  person_id SERIAL,
  product_name TEXT,
  product_price INT,
  quantity INT)

INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
			VALUES ( 0, 'Bacon', 8.00, 40);
					
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
			VALUES ( 1, 'Corn', 5.00, 4);
					
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
			VALUES ( 2, 'Gravy', 3.00, 1);
				
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
			VALUES ( 3, 'Biscuits', 2.50, 8);
					
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
			VALUES ( 0, 'Eggs', 2.50, 12);

SELECT * FROM orders
					
SELECT SUM(quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;


ARTIST SECTION
INSERT INTO artist (artist_id, name) VALUES (276, 'Slack Basseth');
INSERT INTO artist (artist_id, name) VALUES (277, 'AB/DB');
INSERT INTO artist (artist_id, name) VALUES (278, 'Hurple Durpleberries');
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
SELECT * FROM artist WHERE name LIKE 'Black%';
SELECT * FROM artist WHERE name iLIKE '%black%';


EMPLOYEE SECTION
SELECT first_name, last_name FROM employee WHERE city = 'Calgary'
SELECT birth_date FROM employee ORDER BY birth_date DESC LIMIT 1;
SELECT MIN(birth_date) FROM employee;
SELECT first_name, last_name FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


INVOICE SECTION

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
SELECT SUM(TOTAL)/COUNT(*) FROM invoice;
SELECT SUM(total) FROM invoice;