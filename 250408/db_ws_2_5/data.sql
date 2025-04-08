-- Active: 1744099505292@@127.0.0.1@3306

SELECT departments.name AS department, employees.name AS oldest_employee, MAX(employees.age) AS max_age, AVG(employees.age) AS avg_age
FROM departments
INNER JOIN employees
    ON employees.departmentId = departments.id
GROUP BY departments.name;


SELECT departments.name AS department, employees.name AS highest_paid_employee, MAX(employees.salary)
FROM departments
INNER JOIN employees
    ON employees.departmentId = departments.id
GROUP BY departments.name; 


SELECT departments.name AS department, 
    CASE 
        WHEN employees.age < 30 THEN 'under 30'
        WHEN employees.age BETWEEN 30 AND 40 THEN 'BETWEEN 30-40'
        ELSE 'over 40'
    END AS age_group,
    COUNT(*) AS num_employees
FROM employees
JOIN departments 
    ON employees.departmentId = departments.id
GROUP BY departments.name, age_group
-- ORDER BY departments.name, age_group;

SELECT 
    departments.name,
    AVG(employees.salary) AS avg_salary_excluding_max
FROM employees
JOIN departments 
    ON employees.departmentId = departments.id
WHERE employees.salary < (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.departmentId = employees.departmentId
)
GROUP BY departments.name;
