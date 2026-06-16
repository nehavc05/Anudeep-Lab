/*
Create database Studentmanagementsystem contain "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns
: CourseId,CourseName and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

/*

mysql> create database studentmanagementsystem;
Query OK, 1 row affected (0.01 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> create table student(student_id int primary key not null, first_name varchar (50),last_name varchar(50));
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| first_name | varchar(50) | YES  |     | NULL    |       |
| last_name  | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> insert into student values(1,'neha','chavan'),(2,'megha','dhavale'),(3,'sakshi','sane'),(4,'sarthak','chavan'),(5,'yash','kalmbe');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------------+------------+-----------+
| student_id | first_name | last_name |
+------------+------------+-----------+
|          1 | neha       | chavan    |
|          2 | megha      | dhavale   |
|          3 | sakshi     | sane      |
|          4 | sarthak    | chavan    |
|          5 | yash       | kalmbe    |
+------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> create table course(course_id int primary key , course_name varchar(100));
Query OK, 0 rows affected (0.02 sec)

mysql> desc course;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| course_id   | int          | NO   | PRI | NULL    |       |
| course_name | varchar(100) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
mysql> insert into course values(101,'DBMS'),(102,'Java'),(103,'Python'),(104,'SQL'),(105,'C');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from course;
+-----------+-------------+
| course_id | course_name |
+-----------+-------------+
|       101 | DBMS        |
|       102 | Java        |
|       103 | Python      |
|       104 | SQL         |
|       105 | C           |
+-----------+------------
mysql> create table enrollment(enrollment_id int primary key ,student_id int,course_id int, foreign key (student_id)references student(student_id),foreign key (course_id) references course(course_id));
Query OK, 0 rows affected (0.05 sec)
mysql> desc enrollment;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| enrollment_id | int  | NO   | PRI | NULL    |       |
| student_id    | int  | YES  | MUL | NULL    |       |
| course_id     | int  | YES  | MUL | NULL    |       |
+---------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into enrollment values(1,1,101),(2,2,102),(3,3,103),(4,4,104),(5,5,105);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from enrollment;
+---------------+------------+-----------+
| enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          2 |       102 |
|             3 |          3 |       103 |
|             4 |          4 |       104 |
|             5 |          5 |       105 |
+---------------+------------+-----------+
5 rows in set (0.00 sec)
mysql> select student.student_id,student.first_name,student.last_name,course.course_id,course.course_name from enrollment inner join student on enrollment.student_id=student.student_id inner join course on enrollment.course_id=course.course_id;
+------------+------------+-----------+-----------+-------------+
| student_id | first_name | last_name | course_id | course_name |
+------------+------------+-----------+-----------+-------------+
|          1 | neha       | chavan    |       101 | DBMS        |
|          2 | megha      | dhavale   |       102 | Java        |
|          3 | sakshi     | sane      |       103 | Python      |
|          4 | sarthak    | chavan    |       104 | SQL         |
|          5 | yash       | kalmbe    |       105 | C           |
+------------+------------+-----------+-----------+-------------+
5 rows in set (0.00 sec)