select UPPER(ename), LOWER(ename), INITCAP(ename)
from emp;

select ename, sal
from emp
where lower(ename) = 'scott';