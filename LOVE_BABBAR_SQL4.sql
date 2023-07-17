-- INNER JOIN
-- ENLIST all the emplyee ID'S, NAMES ALONG WITH THE PROJECT ALLOCATED TO THEM
SELECT e.id, e.fname, e.lname, p.name from Employee as e INNER JOIN
Project as p ON e.id=p.empID;

-- Fetch out all the employee ID's and their contact detail who have been
-- working from Jaipur with the clients name working in Hyderabad
Select e.id,e.emailID,e.phoneNo,c.first_name,c.last_name from Employee as e INNER JOIN Client as c ON
e.id=c.empID WHERE e.city = 'Jaipur' AND c.city = 'Hyderabad';

-- LEFT JOIN
-- Fetch out each project allocated to each employee
Select * from Employee as e 
LEFT JOIN Project as p ON e.id=p.empID;

-- RIGHT JOIN
-- LIST OUT ALL THE PROJECTS ALONG WITH THE EMPLOYEE'S NAME AND THEIR RESPECTIVE 
-- ALLOCATED EMAIL ID
Select e.fname,e.lname,e.emailID,p.name from Employee as e RIGHT JOIN
Project as p ON e.id = p.empID;

Select e.fname,e.lname,e.emailID,p.name from Project as p LEFT JOIN 
Employee as e ON e.id = p.empID;

-- CROSS JOIN
Select e.fname,e.lname,p.id,p.name from Employee as e 
CROSS JOIN Project as p;

Select e.fname,e.lname,p.id,p.name from Employee as e 
CROSS JOIN Project as p ON e.id=p.empID;

-- Join without JOIN Keyword
Select * from Employee as e, Project as p where e.id = p.empID; 