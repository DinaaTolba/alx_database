-- Script to print the full description of the table 'first_table' from the database 'hbtn_0c_0'

-- Query to retrieve table information
SELECT CONCAT(
    TABLE_NAME,
    CREATE_TABLE
) AS 'Full Description'
FROM (
    SELECT 
        TABLE_NAME,
        CONCAT('CREATE TABLE `', TABLE_NAME, '` (\n') AS CREATE_TABLE
    FROM information_schema.TABLES
    WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
) AS tbl;
