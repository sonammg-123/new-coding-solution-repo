SELECT
    dn1.number AS number1,
    dn2.number AS number2,
    CASE
        WHEN dn1.number > dn2.number THEN dn1.number
        ELSE dn2.number
    END AS max_number
FROM deloitte_numbers AS dn1
CROSS JOIN deloitte_numbers AS dn2;
