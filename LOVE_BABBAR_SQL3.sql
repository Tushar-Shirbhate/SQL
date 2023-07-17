use temp;

CREATE TABLE Customer(
id INT PRIMARY KEY,
cname VARCHAR(255),
Address VARCHAR(255),
Gender CHAR(2),
City VARCHAR(255),
Pincode INT
);

INSERT INTO Customer (id,cname,Address,Gender,City,Pincode)
VALUES (1300,'SHAYAM SINGH','LUDHIANA H.O','M','LUDHIANA',141001),
		(245,'NEELABH SHUKLA','ASHOK NAGAR','M','JALANDHAR',144003),
        (210,'BARKHA SINGH','DILBAGH NAGAR','M','JALANDHAR',144002),
        (500,'ROHAN ARORA','LUDHIANA H.O','M','JALANDHAR',141001);

SELECT * FROM Customer;

INSERT INTO Customer VALUES (1,'codehelp','delhi','M','Delhi',110000);

INSERT INTO Customer (id,cname) VALUES (121,'BOB');

UPDATE Customer SET Address = 'Mumbai', Gender = 'M' WHERE id=121;

-- update multiple rows
SET SQL_SAFE_UPDATES=1;
UPDATE Customer SET Pincode = 110000;

UPDATE Customer SET Pincode = Pincode + 1;

select * from customer;

-- Delete
DELETE FROM Customer WHERE id=121;
DELETE FROM Customer;

-- REPLCE 
REPLACE INTO Customer (id,city) VALUES (1251, 'COLONY');
REPLACE INTO Customer (id, cname, city) VALUES (1333,'CODEHELP','COLONY');
REPLACE INTO Customer SET id=1300, cname='MAC', City='Utah';
DROP TABLE Customer;

INSERT INTO Customer VALUES (1,'RAM KUMAR3','DILBAGH NAGAR','M','JALANDHAR',NULL);

CREATE TABLE Order_Details(
Order_id INT PRIMARY KEY,
delivary_date DATE,
cust_id INT,
FOREIGN KEY(cust_id) references Customer(id) 
);

CREATE TABLE Order_Details(
Order_id INT PRIMARY KEY,
delivary_date DATE,
cust_id INT,
FOREIGN KEY(cust_id) references Customer(id) ON DELETE CASCADE
);

CREATE TABLE Order_Details(
order_id INT PRIMARY KEY,
delivery_date DATE,
cust_id INT,
FOREIGN KEY(cust_id) references Customer(id) ON DELETE SET NULL
);

INSERT INTO Order_Details VALUES (3, '2019-03-11', 1);
INSERT INTO Order_Details VALUES (4, '2019-03-12', 1);

SELECT * FROM Order_Details;

DELETE FROM Customer WHERE ID=1;
DROP TABLE Order_Details;

