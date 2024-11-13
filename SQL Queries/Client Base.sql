-- Client base
SELECT
	customer.customer_id, 
	customer.first_name, 
	customer.last_name,
	city.city, 
	country.country
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
ORDER BY customer.customer_id;



-- Count of distinct values per variable
SELECT
	COUNT(DISTINCT customer.customer_id) AS number_of_customers,
	COUNT(DISTINCT country.country) AS number_of_countries,
	COUNT(DISTINCT city.city) AS number_of_cities
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id;