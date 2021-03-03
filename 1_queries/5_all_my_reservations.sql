SELECT properties.id, properties.title, properties.cost_per_night, reservations.start_date, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
JOIN users ON reservations.guest_id = users.id
WHERE users.id = 1 AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.start_date
ORDER BY reservations.start_date
LIMIT 10;