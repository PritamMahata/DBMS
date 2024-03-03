-- Generate a statement which prompts the user at runtime.
-- The intention is to display employees hired between 2 given dates.
-- Run the query twice. Modify the query to use a double ampersand variable.
-- Run the query a number of the difference.

SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE
BETWEEN '01-JAN-1980' AND '01-NOV-1989';

-- Develop a query that will accept a given job title.
-- Execute the query a number of times to test.
SELECT ENAME, JOB, SAL, MGR, DEPTNO FROM EMP WHERE JOB='MANAGER';


-- Define a variable representing the expression used to calculate an employee's total annual remuneration.
-- Use the variable in a statement which finds all employees who earn $30000 a year or more.

    -- this command only work in "ORACLE SQL *PLUS"
DEFINE REM='SAL*12+NVL(COMM,0)'
SELECT ENAME, &REM FROM EMP WHERE &REM>30000;

-- List the employee name and salary increased by 15% and expressed as a whole number of dollars.
SELECT DEPTNO, ENAME, ROUND(SAL *1.15) PCTSAL FROM EMP;

-- List all employees names and their jobs as heading “EMPLOYEE_AND _ JOB”
SELECT RPAD(ENAME,10)||LPAD(JOB,10) EMPLOYEE_AND_JOB FROM EMP;

-- List all employee names and jobs as following format SMITH (Clerk)
SELECT ENAME ||'('||INITCAP(JOB)||')' EMPLOYEE FROM EMP;

-- Do a case insensitive search for a list of employees with a job that the user enters.
SELECT * FROM EMP WHERE UPPER(JOB) = UPPER('&JOB'); -- change the "&job" with job role example - "MANAGER" etc

-- It had been discovered that the sales people in department 30 are not
-- all male. List all male employees name and job of that department.
SELECT ENAME, DEPTNO,INITCAP(REPLACE(JOB,'SALESMAN','SALESPERSON')),
JOB FROM EMP WHERE DEPTNO=30;