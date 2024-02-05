-- Display each employee's name and hire date from dept 20.
-- Make sure that you specify the alias 'DATE_HIRED' after your
-- expression otherwise the formatted column will wrap;
-- it uses a width of 80 characters is the default for character columns.

SELECT ENAME , TO_CHAR(HIREDATE,'fmMonth, Ddspth YYYY') AS date_hired
FROM EMP
WHERE DEPTNO = 20;


-- Display each employee name with hire date and salary review date.
-- Assume review date is one year after hire date.
-- Order the output in ascending review date order.

SELECT ENAME,
       HIREDATE,
       ADD_MONTHS(HIREDATE, 12)
           REVIEW
FROM EMP
ORDER BY ADD_MONTHS(hiredate, 12);
select *
from EMP;

-- Print list of employees displaying just salary that more than1500.
-- if exactly 1500 display 'On Target', if less than 1500 display 'below 1500'
SELECT ENAME,
       DECODE(SIGN(500 - SAL), 1, 'BELOW 1500', 0, 'On
Target', SAL) SALARY
FROM EMP
ORDER BY ENAME;


-- Write a query, which will return the DAY of the week (i.e.
-- MONDAY), for any date entered in the format: DD.MM.YY

SELECT TO_CHAR(TO_DATE('&ANY DATE', 'DD.MM.YY'), 'DAY') DAY FROM SYS.DUAL;


-- Write a query to calculate the length of time any employee has been with the company.
-- Use DEFINE to avoid repetitive typing of functions.

-- !!!!! Not fix yet !!!!!
DEFINE &EMPLOYEE_NAME = KING;
SELECT ENAME,
       FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE) / 12) || ' YEARS ' ||
       FLOOR(MOD(MONTHS_BETWEEN(SYSDATE, HIREDATE), 12)) || ' MONTHS' AS "LENGTH OF SERVICE"
FROM EMP WHERE ENAME=UPPER(&EMPLOYEE_NAME);


-- Given a string of the format 'nn / nn', verify that the first and last 2
-- characters are numbers, and that the middle character is a '/'.
-- Print the expression 'YES' if valid, 'NO' if not valid. Use the following
-- values to test your solution '12/24', '01/1a', and '99\88'.

SELECT '12/34' VALUE, DECODE(TRANSLATE('12/34', '1234567890', '9999999999'), '99/99', 'YES', 'NO') "VALID?"
FROM SYS.DUAL;  -- inside the "SYS" schema "DUAL" table is empty



-- Employees hired on or before the 15th of any month are paid on the last Friday of that month.
-- Those hired after the 15th are paid the last Friday of the following month.
-- Print a list of employees, their hire
-- date and first pay date. Sort on hire date.

SELECT ENAME, HIREDATE, NEXT_DAY(LAST_DAY(ROUND(HIREDATE, 'MONTH')) - 7, 'FRIDAY') PAYDAY
FROM EMP
ORDER BY HIREDATE;



-- List all employees names, and their average salary group by their
-- respective department.