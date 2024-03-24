create table employee2
(
    Emp_no    int primary key,
    E_name    varchar2(30),
    E_address varchar2(50),
    E_ph_no   char(15),
    Dept_no   int,
    Dept_Name varchar2(30),
    Job_id    int,
    Salary    decimal
);

--  insert 5 row in the table
insert into employee2
values (11, 'RAVI', 'KOLKATA', '9845353223', 10, 'SALES', 222, 23000);
insert into employee2
values (12, 'BIJOY', 'HOOGHLY', '8945455223', 12, 'IT', 333, 35000);
insert into employee2
values (13, 'PUJA', 'HOWRAH', '7923107212', 20, 'MECH', 444, 22000);
insert into employee2
values (14, 'SUMIT', 'KOLKATA', '9162342401', 10, 'SALES', 555, 24000);
insert into employee2
values (15, 'HARIPRASHAD', 'HOWRAH', '9862342401', 20, 'SALES', 666, 25000);

-- display all record from Employee table
select *
from employee2;

-- display the record of each employee who works in department D10
select E_NAME
from employee
where Dept_no = 10;

-- update the city of emp_no-12 with works in department as Nagpur
UPDATE employee
SET E_address = 'NAGPUR'
where Dept_no = 12;


-- display the details of employee who works in department MECH
select *
from employee
where Dept_Name = 'MECH';

-- display the record who are work in sales department
select E_name
from employee
where Dept_Name = 'SALES';