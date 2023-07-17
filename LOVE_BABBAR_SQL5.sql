USE TEMP;

CREATE TABLE DEPT1(
empid INT PRIMARY KEY,
name VARCHAR(255),
role VARCHAR(255)
);

CREATE TABLE DEPT2(
empid INT PRIMARY KEY,
name VARCHAR(255),
role VARCHAR(255)
);

INSERT INTO DEPT1 (empid,name,role) VALUES
	(1,'A','ENGINNER'),
    (2,'B','SALESMAN'),
    (3,'C','MANAGER'),
    (4,'D','SALESMAN'),
    (5,'E','ENGINNER');
INSERT INTO DEPT2 (empid,name,role) VALUES
    (3,'C','MANAGER'),
    (6,'F','MARKETING'),
    (7,'G','SALESMAN');

-- SET OPERATIONS
-- List out all the employees in the company
SELECT * FROM DEPT1
UNION
SELECT * FROM DEPT2;
SELECT * FROM DEPT1;

-- list out all the employees in all the departments who work as salesman
-- UNION
SELECT * FROM DEPT1 WHERE role = 'SALESMAN'
UNION
SELECT * FROM DEPT2 WHERE role = 'SALESMAN';

-- LIST out all the employees who work for both the departments
-- INTERSECT
SELECT DEPT1.* FROM DEPT1 INNER JOIN DEPT2 ON DEPT1.EMPID = DEPT2.EMPID;
SELECT * FROM DEPT1 INNER JOIN DEPT2 ON DEPT1.EMPID = DEPT2.EMPID;

-- LIST out all the employees working in dept1 but not in dept2
-- MINUS 
SELECT DEPT1.* FROM DEPT1 LEFT JOIN DEPT2 ON DEPT1.EMPID = DEPT2.EMPID 
WHERE DEPT2.EMPID IS NULL;