WITH winter AS (
  SELECT *, 'January' AS origin_month
  FROM `Cyclistic_Project.january`
  UNION ALL
  SELECT *, 'February' AS origin_month
  FROM `Cyclistic_Project.february`
  UNION ALL
  SELECT *, 'March' AS origin_month
  FROM `Cyclistic_Project.march`
)-- Average Ride Duration in Minutes by User Type (Jan–Mar 2023)
SELECT
  member_casual,
  ROUND(AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)), 2) AS avg_ride_duration_min
FROM
  winter
WHERE
  ended_at IS NOT NULL
  AND started_at IS NOT NULL
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 0
  AND rideable_type IS NOT NULL
GROUP BY
  member_casual;
