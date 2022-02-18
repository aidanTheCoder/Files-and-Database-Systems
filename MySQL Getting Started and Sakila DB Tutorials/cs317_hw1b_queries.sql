SELECT COUNT(DISTINCT title) FROM film
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id;

SELECT COUNT(*) FROM rental WHERE return_date IS NULL;

SELECT COUNT(*) FROM rental
WHERE DATE(rental_date) <= '2005-07-17'
AND DATE(return_date) > '2005-07-17';

SELECT COUNT(*) FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE (rental_date + INTERVAL rental_duration DAY) < '2005-07-17'
AND DATE(return_date) > '2005-07-17';

SELECT (SELECT COUNT(*) FROM rental WHERE return_date IS NOT NULL) AS returned,
(SELECT COUNT(*) FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE DATE(return_date) > (rental_date + INTERVAL rental_duration DAY)) AS overdue,
(SELECT (overdue/returned) * 100) AS 'percent overdue';

SELECT customer_id, title FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE DATE(rental_date) <= '2005-07-17' AND
(DATE(return_date) > '2005-07-17' OR return_date IS NULL)
ORDER BY customer_id ASC LIMIT 5;

SELECT CONCAT(customer.last_name, ', ', customer.first_name) AS customer,
address.phone, film.title
FROM rental INNER JOIN customer ON rental.customer_id = customer.customer_id
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
WHERE rental.return_date IS NULL
AND rental_date + INTERVAL film.rental_duration DAY < '20050717'
ORDER BY title;