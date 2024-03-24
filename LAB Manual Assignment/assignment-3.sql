create table employee(
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

insert into employee values(101,'RAVI','KOLKATA','9845353223',10,'SALES',222,'MANAGER',23000);
insert into employee values(102,'BIJOY','HOOGHLY','8945455223',20,'IT',333,'ANALYST',35000);
insert into employee values(103,'PUJA','HOWRAH','7923107212',20,'IT',444,'CLERK',22000);
insert into employee values(104,'SUMIT','KOLKATA','9162342401',10,'SALES',555,'MANAGER',24000);
insert into employee values(105,'HARIPRASHAD','HOWRAH','9862342401',20,'IT',666,'MANAGER',25000);

SELECT EMP_NO,E_NAME,SALARY FROM EMPLOYEE WHERE DESIGNATION = 'MANAGER';

SELECT * FROM EMPLOYEE WHERE SALARY > (SELECT SALARY FROM EMPLOYEE WHERE E_NAME = 'PUJA');

SELECT * FROM EMPLOYEE WHERE DESIGNATION IN ('CLERK','ANALYST');

SELECT * FROM EMPLOYEE WHERE DEPT_NO = 10 OR DEPT_NO = 20;

SELECT E_NAME FROM EMPLOYEE WHERE E_NAME LIKE 'S%';

SELECT E_NAME, SUBSTR(E_NAME,1,5) FROM EMPLOYEE WHERE E_NAME LIKE 'H%';

SELECT * FROM employee;