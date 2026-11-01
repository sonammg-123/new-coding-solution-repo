SELECT
    client_id,
    MONTH(time_id) AS usern,
    COUNT(DISTINCT user_id) AS userd
FROM fact_events
GROUP BY
    client_id,
    MONTH(time_id);
