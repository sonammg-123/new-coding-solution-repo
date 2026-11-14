WITH empl_salary AS (
    SELECT
        m.manager_empl_id AS manager_id,
        AVG(e.salary) AS empl_avg_salary
    FROM map_employee_hierarchy AS m INNER JOIN dim_employee AS e
        ON m.empl_id = e.empl_id
    GROUP BY m.manager_empl_id
)

SELECT
    empl.manager_id,
    e.salary,
    empl.empl_avg_salary
FROM empl_salary AS empl INNER JOIN dim_employee AS e
    ON empl.manager_id = e.empl_id
WHERE e.salary < 2 * empl.empl_avg_salary
