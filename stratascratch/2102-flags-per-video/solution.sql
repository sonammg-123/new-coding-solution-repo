WITH case1 AS (
    SELECT
        video_id,
        CONCAT(COALESCE(user_firstname, ''), COALESCE(user_lastname, '')) AS full_name
    FROM user_flags
    WHERE flag_id IS NOT NULL
)

SELECT
    video_id,
    COUNT(DISTINCT full_name) AS unique_users
FROM case1
GROUP BY video_id;
