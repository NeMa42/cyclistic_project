WITH winter AS (
  SELECT *, 'January' AS origin_month
  FROM `Cyclistic_Project.january`
  UNION ALL
  SELECT *, 'February' AS origin_month
  FROM `Cyclistic_Project.february`
  UNION ALL
  SELECT *, 'March' AS origin_month
  FROM `Cyclistic_Project.march`
)-- Total Number of Rides by User Type (Jan–Mar 2023)
SELECT
  member_casual,
  COUNT(ride_id) AS total_rides
FROM
  winter
GROUP BY
  member_casual;
