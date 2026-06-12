mysql> create database joins;
Query OK, 1 row affected (0.01 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key, department_name varchar(30) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(01,'HR'),(02,'IT'),(03,'Finanace'),(04,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> insert into department values (5,'Sales');
Query OK, 1 row affected (0.02 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
|             5 | Sales           |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table employee(employee_id int primary key not null,employee_name varchar(30) not null,department_id int , foreign key(department_id)references department(department_id));
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(01,'Neha',1),(02,'Raj',2),(03,'Mihir',3),(04,'Sakshi',NULL),(05,'Sarthak',5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Neha          |             1 |
|           2 | Raj           |             2 |
|           3 | Mihir         |             3 |
|           4 | Sakshi        |          NULL |
|           5 | Sarthak       |             5 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)
mysql> select employee_name , department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Neha          | HR              |
| Raj           | IT              |
| Mihir         | Finanace        |
| Sakshi        | NULL            |
| Sarthak       | Sales           |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name , department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Neha          | HR              |
| Raj           | IT              |
| Mihir         | Finanace        |
| NULL          | Marketing       |
| Sarthak       | Sales           |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name , department_name from employee cross join department ;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Sarthak       | HR              |
| Sakshi        | HR              |
| Mihir         | HR              |
| Raj           | HR              |
| Neha          | HR              |
| Sarthak       | IT              |
| Sakshi        | IT              |
| Mihir         | IT              |
| Raj           | IT              |
| Neha          | IT              |
| Sarthak       | Finanace        |
| Sakshi        | Finanace        |
| Mihir         | Finanace        |
| Raj           | Finanace        |
| Neha          | Finanace        |
| Sarthak       | Marketing       |
| Sakshi        | Marketing       |
| Mihir         | Marketing       |
| Raj           | Marketing       |
| Neha          | Marketing       |
| Sarthak       | Sales           |
| Sakshi        | Sales           |
| Mihir         | Sales           |
| Raj           | Sales           |
| Neha          | Sales           |
+---------------+-----------------+
25 rows in set (0.00 sec)
