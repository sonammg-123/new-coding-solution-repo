SELECT
    c.customer_id,
    c.customer_name
FROM online_store_customers AS c
WHERE EXISTS (
    SELECT 1
    FROM online_store_orders AS o
    WHERE
        o.customer_id = c.customer_id
        AND o.amount > 100
);
