CREATE DATABASE temp;
show databases;
use temp;

create table account(
id int primary key,
name varchar(255) unique,
balance int,
constraint acc_balance_chk check(balance > 1000)
);

INSERT INTO account (id,name,balance) values 
	(1,'A',10000);
INSERT INTO account (id, name, balance) values
	(2,'B',100);
    
select * from account;
DROP table account;

CREATE TABLE Account(
id int primary key,
name varchar(255) unique,
balance int NOT NULL Default 0
);

INSERT INTO Account (id,name) values (1,'A');

Select * from Account;
