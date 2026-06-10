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
15 rows in set (0.01 sec)
mysql> use e_commerce;
Database changed
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

mysql> select *from employee_details limit 3;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Neha Chavan    |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Avdhut Shigwan |          60000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select *from employee_details limit 2;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | Neha Chavan  |          80000 |
|          2 | Yogesh Salve |          60000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)
mysql> select *from employee_details order by employeeSalary;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          5 | Devesh Shinde  |          20000 |
|          4 | Mihir Latke    |          50000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Avdhut Shigwan |          60000 |
|          1 | Neha Chavan    |          80000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeName;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | Avdhut Shigwan |          60000 |
|          5 | Devesh Shinde  |          20000 |
|          4 | Mihir Latke    |          50000 |
|          1 | Neha Chavan    |          80000 |
|          2 | Yogesh Salve   |          60000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeName desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          2 | Yogesh Salve   |          60000 |
|          1 | Neha Chavan    |          80000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
|          3 | Avdhut Shigwan |          60000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)
mysql> select *from employee_details order by employeeSalary desc limit 2;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | Neha Chavan  |          80000 |
|          2 | Yogesh Salve |          60000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| customer_id | name    | city   | email                   | phone_no   | address               | pin_code |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| 101         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 103         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 104         | sneha   | thane  | sneha@gmail.com         | 9986543789 | thane                 |   908765 |
| 105         | riya    | diva   | riya@gmail.com          | 9876543089 | diva                  |   908809 |
| c101        | dikshya | diva   | dikshapanda66@gmail.com | 9930       | chandrangan residency |   400611 |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
5 rows in set (0.02 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| panvel |
| thane  |
| diva   |
+--------+
3 rows in set (0.01 sec)

mysql> select city from customer;
+--------+
| city   |
+--------+
| panvel |
| panvel |
| thane  |
| diva   |
| diva   |
+--------+
5 rows in set (0.00 sec)
mysql> select *from customer;
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| customer_id | name    | city   | email                   | phone_no   | address               | pin_code |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| 101         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 103         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 104         | sneha   | thane  | sneha@gmail.com         | 9986543789 | thane                 |   908765 |
| 105         | riya    | diva   | riya@gmail.com          | 9876543089 | diva                  |   908809 |
| c101        | dikshya | diva   | dikshapanda66@gmail.com | 9930       | chandrangan residency |   400611 |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id between'103'and'105';
+-------------+-------+--------+-----------------+------------+---------+----------+
| customer_id | name  | city   | email           | phone_no   | address | pin_code |
+-------------+-------+--------+-----------------+------------+---------+----------+
| 103         | neha  | panvel | neha@gmail.com  | 9876543789 | panvel  |   402203 |
| 104         | sneha | thane  | sneha@gmail.com | 9986543789 | thane   |   908765 |
| 105         | riya  | diva   | riya@gmail.com  | 9876543089 | diva    |   908809 |
+-------------+-------+--------+-----------------+------------+---------+----------+
3 rows in set (0.01 sec)
mysql> select *from customer;
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| customer_id | name    | city   | email                   | phone_no   | address               | pin_code |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| 101         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 103         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 104         | sneha   | thane  | sneha@gmail.com         | 9986543789 | thane                 |   908765 |
| 105         | riya    | diva   | riya@gmail.com          | 9876543089 | diva                  |   908809 |
| c101        | dikshya | diva   | dikshapanda66@gmail.com | 9930       | chandrangan residency |   400611 |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id in('101','103','105');
+-------------+------+--------+----------------+------------+---------+----------+
| customer_id | name | city   | email          | phone_no   | address | pin_code |
+-------------+------+--------+----------------+------------+---------+----------+
| 101         | neha | panvel | neha@gmail.com | 9876543789 | panvel  |   402203 |
| 103         | neha | panvel | neha@gmail.com | 9876543789 | panvel  |   402203 |
| 105         | riya | diva   | riya@gmail.com | 9876543089 | diva    |   908809 |
+-------------+------+--------+----------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer where customer_id not in('101','103','105');
+-------------+---------+-------+-------------------------+------------+-----------------------+----------+
| customer_id | name    | city  | email                   | phone_no   | address               | pin_code |
+-------------+---------+-------+-------------------------+------------+-----------------------+----------+
| 104         | sneha   | thane | sneha@gmail.com         | 9986543789 | thane                 |   908765 |
| c101        | dikshya | diva  | dikshapanda66@gmail.com | 9930       | chandrangan residency |   400611 |
+-------------+---------+-------+-------------------------+------------+-----------------------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer where city is null;
Empty set (0.00 sec)

mysql> select *from customer where city is not null;
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| customer_id | name    | city   | email                   | phone_no   | address               | pin_code |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
| 101         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 103         | neha    | panvel | neha@gmail.com          | 9876543789 | panvel                |   402203 |
| 104         | sneha   | thane  | sneha@gmail.com         | 9986543789 | thane                 |   908765 |
| 105         | riya    | diva   | riya@gmail.com          | 9876543089 | diva                  |   908809 |
| c101        | dikshya | diva   | dikshapanda66@gmail.com | 9930       | chandrangan residency |   400611 |
+-------------+---------+--------+-------------------------+------------+-----------------------+----------+
5 rows in set (0.00 sec)
mysql> select *from customer where city = 'panvel' or address='diva';
+-------------+------+--------+----------------+------------+---------+----------+
| customer_id | name | city   | email          | phone_no   | address | pin_code |
+-------------+------+--------+----------------+------------+---------+----------+
| 101         | neha | panvel | neha@gmail.com | 9876543789 | panvel  |   402203 |
| 103         | neha | panvel | neha@gmail.com | 9876543789 | panvel  |   402203 |
| 105         | riya | diva   | riya@gmail.com | 9876543089 | diva    |   908809 |
+-------------+------+--------+----------------+------------+---------+----------+
3 rows in set (0.00 sec)
