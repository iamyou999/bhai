/*(Perform on MYSQL Terminal)
teaches(T_ID, course_id, sec_id, semester, year)
student(S_ID, name, dept_name, tot_cred)
instructor(T_ID, name, dept_name, salary)
course(course_id, title, dept_name, credits)

i. Find the names of the instructor in the university who have taught the courses semester wise.
ii. Create View on single table which retrieves student details.
iii. Rename the column of table student from dept_name to deptatrment_name
iv. Delete student name whose department is NULL
*/
CREATE TABLE teaches (
    T_ID INT,
    course_id INT,
    sec_id INT,
    semester VARCHAR(10),
    year INT
);

CREATE TABLE student (
    S_ID INT,
    name VARCHAR(50),
    dept_name VARCHAR(50),
    tot_cred INT
);

CREATE TABLE instructor (
    T_ID INT,
    name VARCHAR(50),
    dept_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE course (
    course_id INT,
    title VARCHAR(100),
    dept_name VARCHAR(50),
    credits INT
);
SELECT DISTINCT instructor.name
FROM instructor
INNER JOIN teaches ON instructor.T_ID = teaches.T_ID
WHERE teaches.semester = 'Spring';
CREATE VIEW student_details AS
SELECT S_ID, name, dept_name AS department_name, tot_cred
FROM student;
ALTER TABLE student
CHANGE COLUMN dept_name department_name VARCHAR(50);
DELETE FROM student
WHERE department_name IS NULL;

-- Insert sample data into the tables
-- You should insert your own data here.
