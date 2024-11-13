-- 10 films that contributed most to revenue gain
SELECT 
	film.film_id,
	film.title,
	SUM(payment.amount) AS total_payments
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY film.film_id
ORDER BY total_payments DESC
LIMIT 10;



-- 10 films that contributed least to revenue gain
SELECT 
	film.film_id,
	film.title,
	SUM(payment.amount) AS total_payments
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY film.film_id
ORDER BY total_payments ASC
LIMIT 10;