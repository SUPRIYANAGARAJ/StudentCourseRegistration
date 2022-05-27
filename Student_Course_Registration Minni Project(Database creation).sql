create database student_course_registration;
drop database student_course_registration;

create table Role
(
roleId int primary key auto_increment,
Rolename varchar(20)
);

desc role;

create table User
(
userId int primary key auto_increment,
username varchar(20),
Password varchar(20),
RoleId int,
constraint fk_Role foreign key(RoleId) references
Role(roleId)
);

desc User;

create table Dept
(
deptId int primary key auto_increment,
deptname varchar(20)
);

desc Dept;

create table Professor
(
profId int primary key auto_increment,
profname varchar(20),
Deptid int,
constraint fk_Dept foreign key(Deptid) references
Dept(deptId)
);

desc Professor;

create table Course
(
courseId int primary key auto_increment,
coursename varchar(20),
profid int,
constraint fk_prof foreign key(profid) references
Professor(profId)
);

desc Course;

create table Student
(
studId int primary key auto_increment,
studname varchar(20),
addressid varchar(50),
Dob date,
Degree varchar(20)
);

desc Student;

create table Stud_Course
(
studId int,
courseId int,
Preference varchar(5),
primary key (studId,courseId),
constraint fk_stu foreign key(studId) references
Student(studId),
constraint fk_cou foreign key(courseId) references
Course(courseId)
);


desc Stud_Course;


-- Stored procedure --

Delimiter //
Drop procedure if exists P_prof_sav;
create procedure P_prof_sav(IN profName varchar(20),
                            IN DeptId int,
							OUT profId int)
Begin
if
End //
Delimiter ;

show procedure status where db = 'student_course_registration';
call P_prof_sav ("Supriya", "40", "A123");












