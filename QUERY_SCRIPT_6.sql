-- 1.
Select deptno, ename , hiredate from emp
Where (sal, job) in (select min(sal), job from emp group by job)
Order by sal;

-- 2.
Select deptno, dname from dept D
Where not exists (select 'anything' from emp where deptno = d.deptno);

-- 3.
Define rem = sal * 12 + nvl(comm., 0)
Select deptno, sum(&rem) COMPENSATION from emp
Group by deptno
Having sum(&rem) = (select Max(sum(&rem)) from emp group by deptno);

-- 4.
Select ename, sal from emp e
Where 3 > ( select count(*) from emp where e.sal < sal);

-- 5.
Select To_char(hiredate, 'YYYY') YEAR, count(empno) NUMBER_OF_EMPS
from emp
Group by TO_CHAR(hiredate, 'YYYY') having count(empno) = (Select
Max(count(empno)) from emp
Group by TO_CHAR(hiredate,'YYYY'));