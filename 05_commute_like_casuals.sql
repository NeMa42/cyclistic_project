WITH winter AS (
  SELECT *,
    'January' AS origin_month
  FROM `Cyclistic_Project.january`
  UNION ALL
  SELECT *,
    'February' AS origin_month
  FROM `Cyclistic_Project.february`
  UNION ALL
  SELECT *,
    'March' AS origin_month
  FROM `Cyclistic_Project.march`
),
enriched AS (
  SELECT
    ride_id,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_min,
    CASE
      WHEN member_casual = 'casual'
        AND EXTRACT(DAYOFWEEK FROM started_at) BETWEEN 2 AND 6
        AND (
          EXTRACT(HOUR FROM started_at) BETWEEN 6 AND 10 OR
          EXTRACT(HOUR FROM started_at) BETWEEN 16 AND 19
        )
        AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 5 AND 30
      THEN TRUE
      ELSE FALSE
    END AS commute_behavior
  FROM winter
)

-- Final KPI results
SELECT
  COUNT(*) AS total_rides,
  COUNTIF(member_casual = 'casual') AS total_casual_rides,
  COUNTIF(commute_behavior = TRUE) AS commute_like_casual_rides,
  ROUND(COUNTIF(commute_behavior = TRUE) / COUNTIF(member_casual = 'casual') * 100, 2) AS pct_commute_like_casuals,
  ROUND(AVG(CASE WHEN member_casual = 'casual' THEN ride_length_min END), 1) AS avg_duration_casual,
  ROUND(AVG(CASE WHEN member_casual = 'member' THEN ride_length_min END), 1) AS avg_duration_member
FROM enriched;
