/* 
# installation of mysql server and setup in ubuntu
sudo apt install mysql-server
sudo mysql_secure_installation

# installation of mysql Workbench //access the server with a UI
sudo apt install mysql-workbench

# run mysql
sudo systemctl start mysql

# enable start on boot
sudo systemctl enable mysql

# check status of mysql
sudo systemctl status mysql

# login
sudo mysql
mysql -u your_username -p # with password
*/

-- create new user
CREATE USER 'your_username'@'localhost' IDENTIFIED BY 'your_password';

-- change password
ALTER USER 'your_username'@'localhost' IDENTIFIED BY 'your_new_password';

-- grant privilenges
GRANT ALL PRIVILEGES ON *.* TO 'your_username'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- list database
SHOW DATABASES;

-- create database
CREATE DATABASE database_name;

-- list tables
SHOW TABLES;

-- create table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- use / select database
USE database_name;

-- get all data
SELECT * FROM db_name.table_name; -- indicate which db and table

USE db_name; -- set which db we are using and thereafter dont need to set indicate which db
SELECT * FROM table_name;

SELECT DISTINCT col_name FROM table_name;

SELECT col_name1, col_name2 + 1 AS 'new_col_name' -- get only this 2 col with the second one modified
from table_name 
WHERE NOT col_name1 = 1 AND col_name1 < 10 -- condtion
ORDER BY col_name1, col_name2 DESC -- sort
LIMIT 6, 3 -- skip the first 3 and only show the next 3 

-- WHERE condtions
SELECT *
FROM table_name
WHERE col_name NOT IN ('value1', 'value2');

SELECT *
FROM table_name
WHERE col_name is NOT NULL;

SELECT *
FROM table_name
WHERE col_name BETWEEN '1900-01-01' AND '2000-01-01'; -- date

SELECT *
FROM table_name
WHERE col_name LIKE 'be%';
WHERE col_name LIKE '%be%';
WHERE col_name LIKE '%be';
WHERE col_name LIKE 'b_____e' -- only get the rows with the exact same spacing

WHERE col_name REGEXP 'field$'; -- match the end of a string.
WHERE col_name REGEXP '^field'; -- match the beginning of a string.
WHERE col_name REGEXP 'field$|mac|^temp'; -- or
WHERE col_name REGEXP '[gim]e'; -- ge or ie or me 
WHERE col_name REGEXP '[a-h]e'; 

-- inner join
SELECT *
FROM table1 t1
JOIN table2 t2 ON t1.col = t2.col
JOIN table3 t3 ON t1.col = t3.col; -- multi join

SELECT *
FROM db1.table1 t1
JOIN db2.table2 t2 ON t1.col = t2.col -- join mutiple db
WHERE t1.col1 = 'value' AND t2.col2 NOT NULL;

SELECT *
FROM table1 t1
JOIN table1 t2 ON t1.reportTo = t2.id; -- self join

SELECT *
FROM table1 t1
JOIN table1 t2 ON t1.reportTo = t2.id AND t1.temp != t2.id; -- compound join conditions

SELECT *
FROM table1 t1, table2 t2
WHERE t1.col = t2.col; -- implicit join 

SELECT *
FROM table1 t1
JOIN table2 t2 USING (id) -- only if the col name is the same

-- outer join 
SELECT *
FROM table1 t1 
LEFT JOIN table2 t2 ON t1.col = t2.col; -- reuturn all rows from the left table even if there is no match with right table

SELECT *
FROM table1 t1 
RIGHT JOIN table2 t2 ON t1.col = t2.col; -- reuturn all rows from the right table even if there is no match

-- natural join
SELECT *
FROM table1 t1
NATURAL JOIN table2 --let the server decide what join to use

-- union
SELECT *
FROM table1 t1, table2 t2
WHERE t1.col = t2.col
UNION -- combine 2 result table into 1
SELECT *
FROM table1 t1, table2 t2
WHERE t1.col = t2.col;

-- update data
UPDATE table_name
SET col1 = value1, col2 = value2
WHERE condition;

-- insert data
INSERT INTO table_name (col1, col2, col3)
VALUES (value1, value2, value3);

INSERT INTO users (username, email)
VALUES 
    ('jane_doe', 'jane@example.com'),
    ('alice_smith', 'alice@example.com'); -- multiple row

INSERT INTO users (username, email)
VALUES ('charlie_brown', DEFAULT); -- default value

INSERT INTO orders
VALUES (LAST_INSERT_ID(), 'value'); -- add row in other table that is linked

-- delete row
DELETE FROM table1
WHERE id = (
    SELECT *
    FROM table
    WHERE col = 'value'
)

-- delete table
DROP DATABASE database_name;

-- craete a copy of a table
INSERT INTO new_table
SELECT *
FROM order
WHERE condtion;