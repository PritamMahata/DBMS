create table employee3(
    Emp_no int primary key,
    E_name varchar2(30),
    E_address varchar2(50),
    E_ph_no char(15),
    Dept_no int,
    Dept_Name varchar2(30),
    Job_id int,
    Designation varchar2(30),
    Salary decimal
);

insert into employee3 values(101,'RAVI','KOLKATA','9845353223',10,'SALES',222,'MANAGER',23000);
insert into employee3 values(102,'BIJOY','HOOGHLY','8945455223',20,'IT',333,'ANALYST',35000);
insert into employee3 values(103,'PUJA','HOWRAH','7923107212',20,'IT',444,'CLERK',22000);
insert into employee3 values(104,'SUMIT','KOLKATA','9162342401',10,'SALES',555,'MANAGER',24000);
insert into employee3 values(105,'HARIPRASHAD','HOWRAH','9862342401',20,'IT',666,'MANAGER',25000);

SELECT EMP_NO,E_NAME,SALARY FROM EMPLOYEE3 WHERE DESIGNATION = 'MANAGER';

SELECT * FROM EMPLOYEE3 WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEE3 WHERE Dept_Name = 'IT');

SELECT E_name FROM EMPLOYEE3 WHERE DESIGNATION IN ('CLERK','ANALYST');

SELECT E_name FROM EMPLOYEE3 WHERE DEPT_NO = 10 or Dept_no = 20;

SELECT E_NAME FROM EMPLOYEE3 WHERE E_NAME LIKE 'S%';

SELECT E_NAME, SUBSTR(E_NAME,1,5) FROM EMPLOYEE3 WHERE E_NAME LIKE 'H%';

SELECT * FROM EMPLOYEE3;