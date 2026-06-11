/*

Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

/*


mysql> create database student_info;
Query OK, 1 row affected (0.02 sec)

mysql> use student_info;
Database changed

mysql> create table student1(student_id int not null,Firt_Name varchar(50)not null,Last_Name varchar(50) not null,age int not null, phone_no varchar(15) not null, address varchar(100)not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student1 values(01,'Neha','Chavan',21,7709322332,'Panvel'),(02,'Mihir','Latke',22,7989322772,'Mahad'),(03,'Sakshi','Sane',21,9989322342,'Pune'),(04,'Sarthak','Chavan',20,3459322772,'Poladpur'),(05,'Avdhut','Shigvan',22,9989322772,'Rasayani');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student1;
+------------+-----------+-----------+-----+------------+----------+
| student_id | Firt_Name | Last_Name | age | phone_no   | address  |
+------------+-----------+-----------+-----+------------+----------+
|          1 | Neha      | Chavan    |  21 | 7709322332 | Panvel   |
|          2 | Mihir     | Latke     |  22 | 7989322772 | Mahad    |
|          3 | Sakshi    | Sane      |  21 | 9989322342 | Pune     |
|          4 | Sarthak   | Chavan    |  20 | 3459322772 | Poladpur |
|          5 | Avdhut    | Shigvan   |  22 | 9989322772 | Rasayani |
+------------+-----------+-----------+-----+------------+----------+
5 rows in set (0.00 sec)

mysql> select *from student1 order by last_name asc;
+------------+-----------+-----------+-----+------------+----------+
| student_id | Firt_Name | Last_Name | age | phone_no   | address  |
+------------+-----------+-----------+-----+------------+----------+
|          1 | Neha      | Chavan    |  21 | 7709322332 | Panvel   |
|          4 | Sarthak   | Chavan    |  20 | 3459322772 | Poladpur |
|          2 | Mihir     | Latke     |  22 | 7989322772 | Mahad    |
|          3 | Sakshi    | Sane      |  21 | 9989322342 | Pune     |
|          5 | Avdhut    | Shigvan   |  22 | 9989322772 | Rasayani |
+------------+-----------+-----------+-----+------------+----------+
5 rows in set (0.00 sec)
