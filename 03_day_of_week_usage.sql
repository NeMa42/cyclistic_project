WITH winter AS (
  SELECT *, 'January' AS origin_month
  FROM `Cyclistic_Project.january`
  UNION ALL
  SELECT *, 'February' AS origin_month
  FROM `Cyclistic_Project.february`
  UNION ALL
  SELECT *, 'March' AS origin_month
  FROM `Cyclistic_Project.march`
)-- Ride Counts by Day of the Week and User Type (Jan–Mar 2023)
SELECT
  member_casual,
  FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
  COUNT(ride_id) AS total_rides
FROM
 winter
WHERE
  started_at IS NOT NULL
GROUP BY
  member_casual,
  day_of_week
ORDER BY
  member_casual,
  FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
