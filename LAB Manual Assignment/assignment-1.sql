create table employee1
(
    Emp_no    int primary key,
    E_name    varchar2(30),
    E_address varchar2(50),
    E_ph_no   char(15),
    Dept_no   int,
    Dept_Name varchar2(30),
    Job_id    CHAR(15),
    Salary    decimal
);

-- add new column 'HIREDATE'
ALTER TABLE employee1
    ADD HIREDATE Varchar2(11);

-- CHANGE DATATYPE OF JOB_ID CHAR TO VARCHAR2
ALTER TABLE employee1
    MODIFY Job_id varchar2(15);

-- change the column name Emp_no to E_no
ALTER TABLE employee1 RENAME column Emp_no to E_no;

-- change width of the job field of emp table
ALTER TABLE employee1
    MODIFY Job_id varchar2(15);