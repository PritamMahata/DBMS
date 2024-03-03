-- Display all names, department number and name.
SELECT ENAME, E.DEPTNO, DNAME
FROM EMP E,
     DEPT D
WHERE E.DEPTNO = D.DEPTNO;

-- Display the name, location , and department of employees whose salary is more than 1500 a month.
SELECT ENAME, LOC LOCATION, DNAME
FROM EMP,
     DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
  AND SAL > 1500;

-- Produce a list showing employees salary grades.
SELECT ENAME, JOB, SAL, GRADE
FROM EMP,
     SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL;

-- Show only employees on grade 3.
SELECT ENAME, JOB, SAL, GRADE
FROM EMP,
     SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL
  AND GRADE = 3;

-- Show all employees in Dallas.
SELECT ENAME, SAL, LOC LOCATION
FROM EMP,
     DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
  AND LOC = 'DALLAS';

-- List the employee name, job, salary, grade and department name for
-- everyone in the company except clerks, sort on salary, displaying
-- the highest salary first
SELECT ENAME, JOB, SAL, GRADE, DNAME
FROM EMP,
     SALGRADE,
     DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
  AND SAL BETWEEN LOSAL AND HISAL
  AND JOB
    != 'CLERK'
ORDER BY SAL DESC;

-- List the following details for employees who earn $36000 a year or who are clerks.
SELECT ENAME,
       JOB,
       SAL * 12 ANNUAL_SAL,
       D.DEPTNO,
       DNAME,
       GRADE
FROM EMP E,
     SALGRADE,
     DEPT D
WHERE E.DEPTNO = D.DEPTNO
  AND SAL BETWEEN LOSAL
    AND HISAL
  AND (SAL * 12 + NVL(COMM, 0) = 36000 OR
       E.JOB = 'CLERK')
ORDER BY E.JOB;

-- List all employees by name and number along with their manager name and number.
SELECT D.DEPTNO, DNAME
FROM EMP E,
     DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
  AND E.EMPNO IS NULL;


-- Find all employees who joined the company before their manager.
SELECT E.ENAME EMPLOYEE,
       E.HIREDATE ,
       M.ENAME MANAGER,
       M.HIREDATE
FROM EMP E,
     EMP M
WHERE E.MGR = M.EMPNO
  AND E.HIREDATE < M.HIREDATE;

