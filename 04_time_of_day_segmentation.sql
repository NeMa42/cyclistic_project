WITH winter AS (
  SELECT *, 'January' AS origin_month
  FROM `Cyclistic_Project.january`
  UNION ALL
  SELECT *, 'February' AS origin_month
  FROM `Cyclistic_Project.february`
  UNION ALL
  SELECT *, 'March' AS origin_month
  FROM `Cyclistic_Project.march`
)-- Categorize Rides by Time of Day
SELECT
  member_casual,
  EXTRACT(HOUR FROM started_at) AS ride_hour,
  CASE
    WHEN EXTRACT(HOUR FROM started_at) BETWEEN 5 AND 9 THEN 'Morning'        -- 5 AM to 9:59 AM
    WHEN EXTRACT(HOUR FROM started_at) BETWEEN 10 AND 15 THEN 'Afternoon'    -- 10 AM to 3:59 PM
    WHEN EXTRACT(HOUR FROM started_at) BETWEEN 16 AND 20 THEN 'Evening'      -- 4 PM to 8:59 PM
    ELSE 'Night'                                                             -- 9 PM to 4:59 AM
  END AS time_of_day,
  COUNT(ride_id) AS ride_count
FROM
 winter
WHERE
  member_casual IS NOT NULL
  AND started_at IS NOT NULL
GROUP BY
  member_casual,
  ride_hour,
  time_of_day
ORDER BY
  member_casual,
  ride_hour;
