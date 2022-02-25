SELECT first_name, last_name, SUM(amount) AS 'total purchase'
FROM customers JOIN receipts ON receipts.customer_id = customers.customer_id
GROUP BY customers.customer_id ORDER BY SUM(amount) DESC LIMIT 4;

SELECT first_name, last_name, ROUND(AVG(amount), 2) AS 'average purchase'
FROM customers JOIN receipts ON receipts.customer_id = customers.customer_id
GROUP BY customers.customer_id ORDER BY AVG(amount) DESC LIMIT 5;

SELECT first_name, last_name, COUNT(customers.customer_id) AS '# of purchases'
FROM customers JOIN receipts ON receipts.customer_id = customers.customer_id
GROUP BY customers.customer_id HAVING COUNT(customers.customer_id) > 1
ORDER BY COUNT(customers.customer_id) DESC LIMIT 3;

SELECT purchase_date, COUNT(purchase_date) AS '# of purchases' FROM receipts
GROUP BY purchase_date HAVING COUNT(purchase_date) > 1
ORDER BY COUNT(purchase_date) DESC LIMIT 1;

SELECT purchase_date, SUM(amount) AS 'revenue' FROM receipts
GROUP BY purchase_date HAVING COUNT(purchase_date) > 1
ORDER BY SUM(amount) DESC LIMIT 1;

SELECT first_name, last_name, purchase_date FROM customers
JOIN receipts ON receipts.customer_id = customers.customer_id
WHERE purchase_date = (SELECT purchase_date FROM receipts
GROUP BY purchase_date HAVING COUNT(purchase_date) > 1
ORDER BY COUNT(purchase_date) DESC LIMIT 1);

SELECT COUNT(DISTINCT street_address) as '# of sibling pairs' FROM students
WHERE street_address IN (SELECT street_address FROM students
GROUP BY street_address HAVING COUNT(street_address) > 1) AND
last_name (SELECT  last_name FROM students
GROUP BY last_name HAVING COUNT(last_name) > 1);

SELECT first_name, last_name FROM students
WHERE last_name IN (SELECT last_name FROM students
GROUP BY last_name HAVING COUNT(*) > 1) AND
street_address IN (SELECT street_address FROM students
GROUP BY street_address HAVING COUNT(*) > 1) AND
first_name NOT IN (SELECT first_name FROM students
GROUP BY last_name, street_address HAVING COUNT(*) = 1);

SELECT COUNT(DISTINCT birthday) * 2 AS twins FROM students
WHERE birthday IN (SELECT birthday FROM students
GROUP BY birthday HAVING COUNT(birthday) > 1) AND
last_name IN (SELECT last_name FRO students
GROUP BY last_name HAVING COUNT(last_name) > 1);

SELECT first_name, last_name FROM students
WHERE last_name IN (SELECT last_name FROM students
GROUP BY last_name HAVING COUNT(last_name > 1)
AND birthday IN (SELECT birthday FROM students
GROUP BY birthday HAVING COUNT(birthday) > 1);