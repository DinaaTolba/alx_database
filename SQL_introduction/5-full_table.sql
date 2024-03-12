-- Script to print the full description of the table 'first_table' from the database 'hbtn_0c_0'

-- Query to retrieve table information
SELECT CONCAT('Table: ', TABLE_NAME) AS 'Table',
       CONCAT('Create Table: ', CREATE_TABLE) AS 'Create Table'
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME =
