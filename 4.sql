/*(Perform on MYSQL Terminal)
student(S_ID,name,dept_name,tot_cred)
instructor(T_ID,name,dept_name,salary)
course(course_id,title,dept_name,credits)

i. Find the average salary of instructor in those departments where the average salary is more than Rs. 42000/-.
ii. Increase the salary of each instructor in the computer department by 10%.
iii. Find the names of instructors whose names are neither ‘Amol’ nor ‘Amit’.
iv. Find the names of student which contains ‘am’ as its substring.
v. Find the name of students from computer department that “DBMS” courses they take.*/



SELECT dept_name, AVG(salary) as avg_salary
FROM instructor
GROUP BY dept_name
HAVING avg_salary > 42000;

 update instructor
 set salary=salary*1.1
 where dept_name='cs';

SELECT name
FROM instructor
WHERE name NOT IN ('Amol', 'Amit');


SELECT name
FROM student
WHERE name LIKE '%am%';

SELECT s.name
FROM student s
JOIN course c ON s.dept_name = c.dept_name
WHERE c.title = 'DBMS' AND s.dept_name = 'Computer Science';
