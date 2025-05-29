select empno, ename, sal
from emp;
select * from emp;
select dept.*, deptno from dept;
select empno as 사원번호, ename as 사원이름, sal as "Salary"
from emp;
select ename, sal*(12+3000) as 월급
from emp
order by 월급 desc;
select ename || '의 월급은 ' || sal || '입니다' as 월급정보,
        ename || '의 직업은 ' || job || '입니다' as 직업정보
from emp;
select distinct job
from emp;
select unique job
from emp;
select ename, sal
from emp
order by sal asc;
select ename, sal as 월급
from emp
order by 월급 asc;

select ename, deptno, sal
from emp
order by deptno asc, sal desc;

select ename, sal, job
from emp
where sal = 3000;

select ename, sal as 월급,  job as 직업
from emp
where sal >= 3000;

select ename, sal, job, hiredate, deptno
from emp
where ename='SCOTT';

select ename, hiredate
from emp
where hiredate = '81/11/17';

select * 
from NLS_SESSION_PARAMETERS
where PARAMETER = 'NLS_DATE_FORMAT';

select ename, sal*12 as 연봉
from emp
where sal*12 >= 36000;

select ename, sal, comm, sal + comm
from emp
where deptno = 10;

select sal + NVL(comm,0)
from emp
where ename = 'KING';

select ename, sal, job, deptno
from emp
where sal <= 1200;

select ename, sal
from emp
where sal BETWEEN 1000 and 3000;

select ename, sal
from emp
where (sal >= 1000 and sal <=3000);

select ename, sal
from emp
where sal not between 1000 and 3000;

select ename, sal
from emp
where (sal <1000 or sal >3000);

select ename, sal, hiredate
from emp
where hiredate between '1982/01/01' and '1982/12/31';

select ename, sal
from emp
where ename like 'S%';
select ename, sal
from emp
where ename like'_M%';

select ename, sal
from emp
where ename like'_M%';

select ename, sal
from emp
where ename like'%T';

select ename, sal
from emp
where ename like'%A%';

select ename, comm
from emp
where comm is null;

select ename, sal, job
from emp
where job in ('SALESMAN', 'ANALYST', 'MANAGER');

select ename, sal, job
from emp
where job='SALESMAN' and sal>=1200;