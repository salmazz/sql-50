SELECT 
    e1.employee_id 
FROM employees e1 
WHERE EXISTS (
        SELECT 
            * 
        FROM employees e2 
        WHERE e1.manager_id = e2.manager_id 
            AND e1.salary < 30000 
            AND e2.manager_id NOT IN (SELECT employee_id FROM employees)
)
ORDER BY e1.employee_id;