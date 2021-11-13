 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     JOIN dept as d
     ON e.deptno = d.deptno
     JOIN projects as p
     ON e.empno = p.employeeid;



 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     JOIN projects as p
     ON e.empno = p.employeeid
     JOIN dept as d
     ON e.deptno = d.deptno ;



display all the employees who got assigned to projects and department

 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     JOIN dept as d
     ON e.deptno = d.deptno
     LEFT JOIN projects as p
     ON e.empno = p.employeeid;



 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     LEFT JOIN dept as d
     ON e.deptno = d.deptno
     LEFT JOIN projects as p
     ON e.empno = p.employeeid;


 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     LEFT JOIN dept as d
     ON e.deptno = d.deptno
     LEFT JOIN projects as p
     ON e.empno = p.employeeid
     WHERE title IS NOT NULL;


 SELECT empno,e.deptno, d.dname,p.title
     FROM emp as e
     LEFT JOIN dept as d
     ON e.deptno = d.deptno
     LEFT JOIN projects as p
     ON e.empno = p.employeeid;



 SELECT empno,e.deptno, d.dname,p.title
     FROM dept as d
     LEFT JOIN emp as e
     ON e.deptno = d.deptno
     LEFT JOIN projects as p
     ON e.empno = p.employeeid;



 SELECT empno,e.deptno, d.dname
     FROM emp as e
     JOIN dept as d
     ON e.deptno = d.deptno










left outer join 1,2,3,4
rigt outer join 1,2,5



     

