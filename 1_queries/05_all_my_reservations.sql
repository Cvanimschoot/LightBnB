SELECT reservations.id, title, cost_per_night, start_date, AVG(rating) as average_rating
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, title, cost_per_night
ORDER BY start_date
LIMIT 10;