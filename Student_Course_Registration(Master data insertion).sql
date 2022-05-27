-- Master data insertion --

-- Inserting records for role table --

insert into role values (roleId, 'A');
insert into role values (roleId, 'S');

select * from role;

-- Inserting records for User table --

insert into user values (userId, 'Supriya', 'supriya@28', 1);
insert into user values (userId, 'Bindu', 'bindu@26', 2);
insert into user values (userId, 'Sneha', 'sneha123', 1);
insert into user values (userId, 'Santosh', 'raj14', 2);
insert into user values (userId, 'Sunanda', 'Sun@456', 1);
insert into user values (userId, 'Nagaraj', 'naga17', 2);

select * from user;

-- Inserting records for dept table --

insert into dept values (deptId, 'Computer Science');
insert into dept values (deptId, 'Mechanical');
insert into dept values (deptId, 'Electronics');
insert into dept values (deptId, 'Civil');

select * from dept;
