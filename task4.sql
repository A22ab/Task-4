use task4;

CREATE TABLE emp1 (
    emp_id INT PRIMARY KEY,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

INSERT INTO emp1 VALUES
(1, 'HR', 50000, 30),
(2, 'HR', 60000, 35),
(3, 'IT', 70000, 40),
(4, 'IT', 80000, 45),
(5, 'Sales', 55000, 28),
(6, 'Sales', 65000, 32);

SELECT SUM(salary) AS total_salary FROM emp1;

SELECT department, COUNT(*) AS emp_count FROM emp1 GROUP BY department;

SELECT department, AVG(salary) AS avg_salary FROM emp1 GROUP BY department;

SELECT COUNT(DISTINCT department) AS distinct_dept_count FROM emp1;

SELECT department, SUM(salary) AS total_salary
FROM emp1
GROUP BY department
HAVING SUM(salary) > 120000;

SELECT department, MAX(salary) AS highest_salary FROM emp1 GROUP BY department;

SELECT department, age, COUNT(*) AS emp_count FROM emp1 GROUP BY department, age;






