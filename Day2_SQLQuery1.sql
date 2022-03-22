/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CustID]
      ,[First Name]
      ,[Last Name]
      ,[Customer Type]
      ,[DOB]
  FROM [Sales ].[dbo].[Sheet1$]


  SELECT[FIRST NAME],[LAST NAME] 
  FROM DimCustomer 
  WHERE [FIRST NAME] LIKE	'Step%'


  SELECT[FIRST NAME],[LAST NAME] 
  FROM DimCustomer 
  WHERE [FIRST NAME] LIKE	'%n'

    SELECT[FIRST NAME],[LAST NAME] 
  FROM DimCustomer 
  WHERE [FIRST NAME] LIKE	'[^n]%'


  SELECT[FIRST NAME],[LAST NAME] 
  FROM DimCustomer 
  WHERE [FIRST NAME] LIKE	'%[^n]'

/*  A wildcard set can include both single characters and ranges. The following example uses 
the [] operator to find a string that begins with a number or a series of special characters.
*/

SELECT [object_id], OBJECT_NAME(object_id) AS [object_name], name, column_id 
FROM sys.columns 
WHERE name LIKE '[0-9!@#$.,;_]%';
go


drop table dept;
drop table emp;
go
use Sales 
go
	create table dept(  
  deptno     Bigint NOT NULL,  
  dname      varchar(14),  
  loc        varchar(13),  
  constraint pk_dept primary key (deptno)  
)	

create table emp(  
  empno    bigint,  
  ename    varchar(10),  
  job      varchar(9),  
  mgr      bigint,  
  hiredate date,  
  sal      Decimal(7,2),  
  comm     Decimal(7,2),  
  deptno   Bigint,  
  constraint pk_emp primary key (empno),  
  constraint fk_deptno foreign key (deptno) references dept (deptno) , 
    CONSTRAINT check_salary
    CHECK (sal > 0)
)

 SELECT convert(date,'13-JUL-87') AS dd

insert into dept
values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept
values(20, 'RESEARCH', 'DALLAS');
insert into dept
values(30, 'SALES', 'CHICAGO');
insert into dept
values(40, 'OPERATIONS', 'BOSTON');

truncate table emp;

insert into emp
values(
 7839, 'KING', 'PRESIDENT', null,
  '1981-11-17',
 5000, null, 10
);
insert into emp
values(
 7698, 'BLAKE', 'MANAGER', 7839,
 '1981-5-1',
 2850, null, 30
);



insert into emp
values(
 7782, 'CLARK', 'MANAGER', 7839,
 '9-6-1981',
 2450, null, 10
);
insert into emp
values(
 7566, 'JONES', 'MANAGER', 7839,
 '2-4-1981',
 2975, null, 20
);

insert into emp
values(
 7788, 'SCOTT', 'ANALYST', 7566,
 convert(date,'13-JUL-87'),
 3000, null, 20
);
insert into emp
values(
 7902, 'FORD', 'ANALYST', 7566,
 convert(date,'3-12-1981'),
 3000, null, 20
);
insert into emp
values(
 7369, 'SMITH', 'CLERK', 7902,
 convert(date,'12-17-1980'),
 800, null, 20
);
insert into emp
values(
 7499, 'ALLEN', 'SALESMAN', 7698,
 convert(date,'20-2-1981'),
 1600, 300, 30
);
insert into emp
values(
 7521, 'WARD', 'SALESMAN', 7698,
 convert(date,'22-2-1981'),
 1250, 500, 30
);
insert into emp
values(
 7654, 'MARTIN', 'SALESMAN', 7698,
 convert(date,'28-9-1981'),
 1250, 1400, 30
);
insert into emp
values(
 7844, 'TURNER', 'SALESMAN', 7698,
 convert(date,'8-9-1981'),
 1500, 0, 30
);
insert into emp
values(
 7876, 'ADAMS', 'CLERK', 7788,
 convert(date,'13-JUL-87'),
 1100, null, 20
);
insert into emp
values(
 7900, 'JAMES', 'CLERK', 7698,
 convert(date,'3-12-1981'),
 950, null, 30
);



select * from emp;


create schema Sales 