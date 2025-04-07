SELECT room_type, COUNT(*) AS booking_count
FROM bookings
WHERE check_in_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY room_type
ORDER BY booking_count DESC, room_type ASC
LIMIT 1;
