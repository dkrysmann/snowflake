CREATE DATABASE example_db;
USE DATABASE example_db;
CREATE SCHEMA example_schema;
USE SCHEMA example_schema;

CREATE OR REPLACE TABLE employees(id NUMBER, name VARCHAR, role VARCHAR);
INSERT INTO employees (id, name, role) VALUES 
(1, 'Rene', 'op'), 
(2, 'Ewin', 'dev'), 
(3, 'Frank', 'dev'),
(4, 'Darek', 'op'), 
(5, 'Jean-Paul', 'op'), 
(6, 'Maurice', 'dev'), 
(7, 'Peter', 'dev')
(8, 'Davina', 'op')
;