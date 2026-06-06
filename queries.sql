SHOW TABLES;


-- Display all details of students.

SELECT * FROM student;


-- Display only the first name and CGPA of all students.

SELECT first_name,last_name,cgpa FROM student;


-- Display all female students.

SELECT * FROM student
WHERE gender = 'F';


-- Display students whose CGPA is greater than 8.5

SELECT * FROM student
WHERE cgpa>8.5;


-- Display all students ordered by CGPA in descending order.

SELECT * FROM student
ORDER BY cgpa DESC;


-- Find the top 3 students with the highest CGPA.

SELECT * FROM student
ORDER BY cgpa DESC
LIMIT 3;


-- Find the total number of students in the college.

SELECT COUNT(student_id) FROM student;


-- Find the average CGPA of all students.

SELECT AVG(cgpa) FROM student;

SELECT ROUND(AVG(cgpa),2) FROM student;


-- Find the highest CGPA among all students.

SELECT MAX(cgpa) FROM student;


-- Find the number of students in each department.

SELECT dept_id, COUNT(dept_id) FROM student
GROUP BY dept_id;


-- Average CGPA department-wise

SELECT AVG(cgpa),dept_id, COUNT(dept_id) FROM student
GROUP BY dept_id;


-- Display: student_id,first_name,dept_name

SELECT student.student_id,student.first_name,department.dept_name FROM student
JOIN department
ON student.dept_id = department.dept_id;


-- Display: student_name,course_name,grade

SELECT student.first_name,student.last_name,course.course_name,enrollment.grade FROM student
JOIN enrollment
ON student.student_id=enrollment.student_id
JOIN course
ON enrollment.course_id=course.course_id;


-- highest CGPA using a subquery(NESTED QUERY)

SELECT * FROM student
WHERE cgpa = (
SELECT MAX(cgpa) FROM student
);


-- Find the names of students whose CGPA is greater than the average CGPA of all students.

SELECT student.first_name,student.cgpa FROM student
WHERE cgpa > (	
	SELECT AVG(cgpa) FROM student
);


-- Find the department having the highest average CGPA.

SELECT student.dept_id,AVG(cgpa),department.dept_name FROM student
JOIN department
ON student.dept_id = department.dept_id
GROUP BY Student.dept_id, department.dept_name
ORDER BY AVG(cgpa)DESC
LIMIT 1;


-- Find students who are enrolled in more than one course.

SELECT student.first_name,student.last_name,COUNT(enrollment.course_id) FROM student
JOIN enrollment
ON student.student_id=enrollment.student_id
GROUP BY student.student_id,student.first_name,student.last_name
HAVING COUNT(enrollment.course_id) > 1 ;


-- Find the course with the maximum number of enrolled students.

SELECT course.course_name,COUNT(enrollment.course_id) FROM enrollment
JOIN course
ON course.course_id=enrollment.course_id
GROUP BY course.course_name
ORDER BY COUNT(enrollment.course_id) DESC
LIMIT 1;


-- Find students who have never enrolled in any course.

SELECT student.student_id,student.first_name,enrollment.course_id FROM student
LEFT JOIN enrollment
ON student.student_id = enrollment.student_id
WHERE enrollment.student_id IS NULL;


-- Display department names and the total number of students in each department, including departments with zero students.

SELECT department.dept_name,COUNT(student.dept_id) AS total_no_of_students FROM  department
LEFT JOIN student
ON student.dept_id = department.dept_id
GROUP BY department.dept_id;


-- Find the second highest CGPA in the college.

SELECT cgpa FROM student
GROUP BY cgpa
ORDER BY cgpa DESC
LIMIT 1,1;

-- OR

SELECT cgpa FROM student
WHERE cgpa < (
	SELECT MAX(cgpa) FROM student
)
ORDER BY cgpa DESC
LIMIT 1;

-- OR

SELECT MAX(cgpa) FROM student
WHERE cgpa < (
	SELECT MAX(cgpa) FROM student
);


-- VIEW QUERY

CREATE VIEW student_view AS 
SELECT student.student_id,student.first_name,student.last_name,department.dept_name 
FROM student
JOIN department
ON student.dept_id = department.dept_id;

SELECT * FROM student_view;







