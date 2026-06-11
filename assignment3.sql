 show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| bankdb                   |
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
16 rows in set (0.03 sec)

mysql> use e_commerce;
Database changed
mysql> select *from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Neha Chavan    |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Avdhut Shigwan |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details where employeeSalary >60000;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | Neha Chavan  |          80000 |
+------------+--------------+----------------+
1 row in set (0.01 sec)

mysql> select *from employee order by employeeSalary desc;
+--------+---------+------+----------------+
| emp_id | name    | dept | employeeSalary |
+--------+---------+------+----------------+
|      3 | harshu  | IT   |          33000 |
|      4 | santosh | CS   |          27000 |
|      2 | supriya | CS   |          25000 |
|      1 | sakshi  | IT   |          23000 |
|      5 | rohit   | IT   |          22000 |
+--------+---------+------+----------------+
5 rows in set (0.01 sec)

mysql> select *from employee order by employeeSalary ;
+--------+---------+------+----------------+
| emp_id | name    | dept | employeeSalary |
+--------+---------+------+----------------+
|      5 | rohit   | IT   |          22000 |
|      1 | sakshi  | IT   |          23000 |
|      2 | supriya | CS   |          25000 |
|      4 | santosh | CS   |          27000 |
|      3 | harshu  | IT   |          33000 |
+--------+---------+------+----------------+
5 rows in set (0.00 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | 101         | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> create table orders(order_id int primary key,department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.08 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department , sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department , avg(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         1250 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department , sum(amount) as total_amount from orders group by department having sum(amount) >1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> create table employee_details1(employee_id int not null,name varchar(50) not null, department varchar(50)not null ,salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee_details1 values(01,'neha chavan','HR',5000),(02,'sarthak chavan','IT',9000),(03,'raj shinde','HR',8000),(04,'megha dhavle','IT',5000),(05,'atharv chavan','finance',6000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee_details1;
+-------------+----------------+------------+--------+
| employee_id | name           | department | salary |
+-------------+----------------+------------+--------+
|           1 | neha chavan    | HR         |   5000 |
|           2 | sarthak chavan | IT         |   9000 |
|           3 | raj shinde     | HR         |   8000 |
|           4 | megha dhavle   | IT         |   5000 |
|           5 | atharv chavan  | finance    |   6000 |
+-------------+----------------+------------+--------+
5 rows in set (0.00 sec)

ysql> select department , count(*) as total_employee from employee_details1 group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department , sum(salary) as total_salary from employee_details1 group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        13000 |
| IT         |        14000 |
| finance    |         6000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department , avg(salary) as total_avg from employee_details1 group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      6500 |
| IT         |      7000 |
| finance    |      6000 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department ,salary, count(*) from employee_details1 group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        1 |
| IT         |   9000 |        1 |
| HR         |   8000 |        1 |
| IT         |   5000 |        1 |
| finance    |   6000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select department , count(*)as total  from employee_details1 group by department having count(*) >1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department , count(*)as total  from employee_details1 group by department having count(*) <=1;
+------------+-------+
| department | total |
+------------+-------+
| finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)