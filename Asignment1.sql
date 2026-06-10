mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| demo                     |
| e_commerce               |
| ecommerce                |
| information_schema       |
| joints                   |
| mysql                    |
| performance_schema       |
| sakila                   |
| store_procedure_example  |
| store_procesure_example  |
| student_managementsystem |
| studentmanagementsystem  |
| sys                      |
| world                    |
+--------------------------+
15 rows in set (0.05 sec)

mysql> use e_commerce;
Database changed
mysql>  create table employee1(employeeID int(10) not null primary key, employeeName varchar(40) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql>  insert into employee1 values(01,'Neha Chavan',80000),(02,'Yogesh Salve',60000),(03,'Avdhut Shigwan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Avdhut Shigwan |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee1 set salary=10000 where employeeID=3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Avdhut Shigwan |  10000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee1 set employeeName='Sakshi Sane' where employeeID=2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Sakshi Sane    |  60000 |
|          3 | Avdhut Shigwan |  10000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee1 where employeeId=5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Sakshi Sane    |  60000 |
|          3 | Avdhut Shigwan |  10000 |
|          4 | Mihir Latke    |  50000 |
+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee1;
Query OK, 4 rows affected (0.03 sec)

mysql> select * from employee1;
Empty set (0.00 sec)

mysql>  desc employee1;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(40) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>  insert into employee1 values(01,'Neha Chavan',80000),(02,'Yogesh Salve',60000),(03,'Avdhut Shigwan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Avdhut Shigwan |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql>  truncate table employee1;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from employee1;
Empty set (0.01 sec)

mysql> desc employee1;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(40) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee1;
Query OK, 0 rows affected (0.03 sec)

mysql>  create table employee1(employeeID int(10) not null primary key, employeeName varchar(40) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql>  insert into employee1 values(01,'Neha Chavan',80000),(02,'Yogesh Salve',60000),(03,'Avdhut Shigwan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee1;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Neha Chavan    |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Avdhut Shigwan |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee1 add email varchar(100) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(40)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>  alter table employee1 modify employeeName varchar(100) not null;
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee1 drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> alter table employee1 rename column salary to employeeSalary;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee1 rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql>  desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.15 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>  desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
5 rows in set (0.00 sec)
