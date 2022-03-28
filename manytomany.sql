
  truncate table student
  truncate table course

 create table student (student_id bigint, StudentName varchar(25), dob date);
insert into student values(1,'Srinivas', '2002-05-02')
insert into student values(2,'Radha', '2002-03-12')
insert into student values(3,'Deepak', '2001-06-03')


select * from student


create table Course (course_id bigint, CourseName varchar(25));

insert into Course values(1,'English')
insert into Course values (2,'Math')



create table Student_Course  (student_id bigint, course_id bigint)

insert into Student_Course values(1,1)
insert into Student_Course values(1,2)
insert into Student_Course values(3,2)
insert into Student_Course values(2,1)


select * from Student_Course