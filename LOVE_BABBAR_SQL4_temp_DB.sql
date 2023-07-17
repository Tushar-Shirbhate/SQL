use temp;

CREATE TABLE Employee(
id INT PRIMARY KEY,
fname VARCHAR(255),
lname VARCHAR(255),
Age INT,
emailID VARCHAR(255),
PhoneNo numeric(10),
City VARCHAR(255)
);

CREATE TABLE Client(
id  INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
age INT,
emailID VARCHAR(255),
PhoneNo numeric(10),
City VARCHAR(255),
empID INT,
FOREIGN KEY (empID) references Employee(id)
);

CREATE TABLE Project(
id INT PRIMARY KEY,
empID INT,
name VARCHAR(255),
startdate DATE,
clientID INT,
foreign key(clientID) references Client(id)
);

DROP TABLE PROJECT;
DROP TABLE EMPLOYEE;
SELECT * FROM Employee;
SELECT * FROM Client;
SELECT * FROM PROJECT;

INSERT INTO Employee (id,fname,lname,Age,emailID,PhoneNo,City) VALUES
(1,'Aman','Proto',32,'aman@gmail.com',898,'Delhi'),
(2,'Yagya','Narayan',44,'yagya@gmail.com',222,'Palam'),
(3,'Rahul','BD',22,'rahul@gmail.com',444,'Kolkata'),
(4,'Jatin','Hermit',31,'jatin@gmail.com',666,'Raipur'),
(5,'PK','Pandey',21,'pk@gmail.com',555,'Jaipur');
    
INSERT INTO Client (id,first_name,last_name,age,emailID,PhoneNo,City,empID) VALUES
(1,'Mac','Rogers',47,'mac@gmail.com',333,'Kolkata',3),
(2,'Max','Poirier',27,'max@gmail.com',222,'Kolkata',3),
(3,'Peter','Jain',24,'peter@gmail.com',111,'Delhi',1),
(4,'Sushant','Aggrawal',23,'sushant@gmail.com',45454,'Hyderabad',5),
(5,'Pratap','Singh',36,'p@gmail.com',77767,'Mumbai',2);
    
INSERT INTO Project (id,empID,name,startdate,clientID) VALUES
	(1,1,'A','2021-04-21',3),
    (2,2,'B','2021-03-12',1),
    (3,3,'C','2021-01-16',5),
    (4,3,'D','2021-04-27',2),
    (5,5,'E','2021-05-01',4);