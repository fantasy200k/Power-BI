
CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL,
  primary key (empno),
  constraint fk_deptno foreign key (deptno)
  references dept(deptno)
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno decimal(2,0),
  dname varchar(14) default NULL,
  loc varchar(13) default NULL,
  primary key(deptno)
);

ALTER TABLE emp ADD FOREIGN KEY (deptno) REFERENCES dept(deptno);

ALTER TABLE emp ADD CONSTRAINT FK_Deptno FOREIGN KEY (deptno) REFERENCES dept(deptno);

ALTER TABLE emp DROP FOREIGN KEY FK_Deptno;