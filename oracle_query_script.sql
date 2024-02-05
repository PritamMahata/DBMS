-- Select all information from EMP table.
SELECT * FROM EMP;

-- List all employees who have a salary between 1000 to 2000
SELECT ENAME, DEPTNO, SAL FROM EMP WHERE SAL
BETWEEN 1000 AND 2000;

--List department numbers and names in department name order.
SELECT DEPTNO, DNAME FROM DEPT ORDER BY DNAME;

--Display all the different job types.
SELECT DISTINCT JOB FROM EMP;

-- List the details of the employees in departments 10 and 20 in alphabetical order
SELECT * FROM EMP WHERE DEPTNO IN(10,20) ORDER BY
ENAME;

-- List names and jobs of all clerks in department 20.
SELECT ENAME, JOB FROM EMP WHERE JOB='CLERK'AND
DEPTNO=20;

-- Display all employees’ names, which have TH or LL in them.
SELECT ENAME FROM EMP WHERE ENAME LIKE '%TH%' OR
ENAME LIKE '%LL%';

-- List following details for all employees who have a manager.
SELECT ENAME, JOB, SAL FROM EMP WHERE MGR IS NOT
NULL;

-- Display name and total remuneration for all employees.
SELECT ENAME, SAL*12+NVL(COMM,0) RENUNERATION FROM
EMP;

-- Display all employees who were hired during 1983.
SELECT ENAME, DEPTNO, HIREDATE FROM EMP WHERE
HIREDATE LIKE '%87%';

-- Display name, annual salary and commission of all sales people
-- whose monthly salary is greater than their commission. The output
-- should be ordered by salary , highest first. If two or more
-- employees have the same salary sort by employee name, within the
-- highest salary order.
SELECT ENAME, SAL*12 ANNUAL_SAL, COMM FROM EMP
WHERE SAL>COMM AND JOB='SALESMAN' ORDER BY SAL
DESC,ENAME;