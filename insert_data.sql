INSERT INTO department VALUES
(1,'CSE','Dr. Sharma'),
(2,'AIML','Dr. Verma'),
(3,'IT','Dr. Patel'),
(4,'ECE','Dr. Rao'),
(5,'Mechanical','Dr. Singh');

INSERT INTO faculty VALUES
(1,'Dr. Sharma','Professor',120000,1),
(2,'Dr. Mehta','Associate Professor',95000,1),
(3,'Prof. Kulkarni','Assistant Professor',70000,1),
(4,'Dr. Verma','Professor',125000,2),
(5,'Prof. Joshi','Assistant Professor',72000,2),
(6,'Prof. Iyer','Assistant Professor',68000,2),
(7,'Dr. Patel','Professor',118000,3),
(8,'Prof. Shah','Associate Professor',90000,3),
(9,'Prof. Khan','Assistant Professor',70000,3),
(10,'Dr. Rao','Professor',122000,4),
(11,'Prof. Nair','Assistant Professor',69000,4),
(12,'Prof. Das','Associate Professor',92000,4),
(13,'Dr. Singh','Professor',121000,5),
(14,'Prof. Gupta','Associate Professor',91000,5),
(15,'Prof. Yadav','Assistant Professor',67000,5);

INSERT INTO course VALUES
(101,'DBMS',4,1),
(102,'Operating Systems',4,1),
(103,'Computer Networks',4,1),

(201,'Machine Learning',4,2),
(202,'Deep Learning',4,2),
(203,'Python Programming',3,2),

(301,'Web Development',3,3),
(302,'Cloud Computing',4,3),
(303,'Cyber Security',4,3),

(401,'Digital Electronics',4,4),
(402,'Microprocessors',4,4),
(403,'Embedded Systems',4,4),

(501,'Thermodynamics',4,5),
(502,'Fluid Mechanics',4,5),
(503,'CAD/CAM',4,5);

INSERT INTO classroom VALUES
(101,'A',60),
(102,'A',60),
(103,'A',50),
(201,'B',70),
(202,'B',70),
(203,'B',50),
(301,'C',80),
(302,'C',80);

INSERT INTO hostel VALUES
(1,'Boys Hostel A',200),
(2,'Boys Hostel B',150),
(3,'Girls Hostel',180);

INSERT INTO student VALUES
(1001,'Rahul','Patil','M','2004-01-15',1,5,8.45),
(1002,'Sneha','Joshi','F','2004-02-10',1,5,9.12),
(1003,'Amit','Shah','M','2003-11-20',1,5,7.89),
(1004,'Priya','Kulkarni','F','2004-04-18',1,5,8.92),

(1005,'Rohan','Patel','M','2004-03-01',2,5,8.34),
(1006,'Neha','Gupta','F','2004-05-12',2,5,9.01),
(1007,'Aditya','Verma','M','2004-06-25',2,5,7.76),
(1008,'Pooja','Singh','F','2004-07-14',2,5,8.55),

(1009,'Karan','Mehta','M','2003-12-11',3,5,7.95),
(1010,'Anjali','Patil','F','2004-01-05',3,5,8.88),
(1011,'Sagar','Khan','M','2004-02-28',3,5,8.11),
(1012,'Riya','Sharma','F','2004-04-09',3,5,9.20),

(1013,'Vikas','Nair','M','2004-05-17',4,5,8.10),
(1014,'Asha','Das','F','2004-06-21',4,5,8.70),
(1015,'Deepak','Rao','M','2004-08-08',4,5,7.80),
(1016,'Kavya','Iyer','F','2004-09-02',4,5,9.05),

(1017,'Manoj','Yadav','M','2004-02-15',5,5,7.65),
(1018,'Nikita','Singh','F','2004-03-19',5,5,8.50),
(1019,'Arjun','Gupta','M','2004-04-25',5,5,8.02),
(1020,'Meera','Patel','F','2004-05-30',5,5,9.15);

INSERT INTO enrollment VALUES
(1001,101,'A'),
(1001,102,'B'),
(1002,101,'A'),
(1002,103,'A'),
(1005,201,'A'),
(1006,201,'A'),
(1009,301,'B'),
(1010,301,'A'),
(1013,401,'B'),
(1014,401,'A'),
(1017,501,'B'),
(1018,501,'A');

INSERT INTO result VALUES
(1,1001,101,85),
(2,1002,101,92),
(3,1003,102,76),
(4,1004,103,89),
(5,1005,201,81),
(6,1006,201,95),
(7,1007,202,73),
(8,1008,203,88),
(9,1009,301,79),
(10,1010,301,90);
