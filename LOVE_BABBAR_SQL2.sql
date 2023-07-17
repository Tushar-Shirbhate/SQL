-- Add new column
ALTER TABLE Account ADD interest FLOAT NOT NULL DEFAULT 0;
SELECT * FROM account;
DESC account;

-- Modify
ALTER TABLE Account MODIFY interest DOUBLE NOT NULL DEFAULT 0; 

-- Rename column 
 ALTER TABLE Account CHANGE COLUMN INTEREST SAVING_INTERSET FLOAT NOT NULL DEFAULT 0;
 
 -- DROP COLUMN
 ALTER TABLE Account DROP COLUMN SAVING_INTERSET;
 
 -- RENAME TABLE
 ALTER TABLE Account RENAME TO Account_Details;
 SELECT * FROM Account_Details;
 
 select * from account_details;