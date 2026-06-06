CREATE DATABASE collegedb;
USE collegedb;

CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    hod_name VARCHAR(50)
);

CREATE TABLE faculty(
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(50),
    designation VARCHAR(30),
    salary INT,
    dept_id INT,
    FOREIGN KEY(dept_id)
    REFERENCES department(dept_id)
);

CREATE TABLE course(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT,
    dept_id INT,
    FOREIGN KEY(dept_id)
    REFERENCES department(dept_id)
);

CREATE TABLE classroom(
    room_no INT PRIMARY KEY,
    block_name VARCHAR(20),
    capacity INT
);

CREATE TABLE hostel(
    hostel_id INT PRIMARY KEY,
    hostel_name VARCHAR(30),
    capacity INT
);

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender CHAR(1),
    dob DATE,
    dept_id INT,
    semester INT,
    cgpa DECIMAL(3,2),
    FOREIGN KEY(dept_id)
    REFERENCES department(dept_id)
);

CREATE TABLE enrollment(
    student_id INT,
    course_id INT,
    grade CHAR(2),
    PRIMARY KEY(student_id,course_id),
    FOREIGN KEY(student_id)
    REFERENCES student(student_id),
    FOREIGN KEY(course_id)
    REFERENCES course(course_id)
);

CREATE TABLE result(
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY(student_id)
    REFERENCES student(student_id),
    FOREIGN KEY(course_id)
    REFERENCES course(course_id)
);
