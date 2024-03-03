-- Find minimum salary of all employees
SELECT MIN(SAL) MINSAL
FROM EMP;

-- Find minimum, maximum and average salaries of all employees
select min(SAL) MinSAL, max(SAL) MaxSAL, ROUND(avg(SAL), 2) AvgSAL
from EMP;

-- List the minimum and maximum salary for each job type.
SELECT JOB, MAX(SAL) MAXSAL, MIN(SAL) MINSAL
FROM EMP
GROUP BY JOB;


-- Find out how many managers there are without listing them.
SELECT COUNT(*) MANAGERS
FROM EMP
WHERE JOB = 'MANAGER';

-- Find average salary and average total remuneration for each job type remember salesman earn commission.
SELECT JOB,
       ROUND(AVG(SAL), 2) AVSAL,
       AVG(SAL * 12 + NVL(COMM, 0))
                          AVCOMP
FROM EMP
GROUP BY JOB;

-- Find the difference between highest and lowest salaries.
SELECT MAX(SAL) - MIN(SAL) DIFFERENCE
FROM EMP;

-- Find all departments which have more than 3 employees
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 3;

-- List lowest paid employees working for each manager.
-- Exclude any groups where the minimum salary is less than 1000.
-- Sort the output by salary.
SELECT MGR, MIN(SAL) MINSAL
FROM EMP
GROUP BY MGR
HAVING MIN(SAL) >= 1000
ORDER BY MIN(SAL);

-- Display all employee names and their department name, in department name order.
SELECT ENAME,DNAME FROM EMP,DEPT WHERE
EMP.DEPTNO=DEPT.DEPTNO;