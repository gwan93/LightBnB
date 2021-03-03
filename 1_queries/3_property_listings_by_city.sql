SELECT properties.id, properties.title, properties.cost_per_night, avg(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%Vancouver%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;