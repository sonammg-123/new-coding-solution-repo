WITH f AS (
    SELECT
        user_id,
        MIN(created_at) AS first_purchase
    FROM amazon_transactions
    GROUP BY user_id
)

SELECT DISTINCT a.user_id
FROM amazon_transactions AS a
INNER JOIN f
    ON a.user_id = f.user_id
WHERE DATEDIFF(a.created_at, f.first_purchase) BETWEEN 1 AND 7;
