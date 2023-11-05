//i. Get duty allocation details for e_no 123 for the first shift in the month of April 2003

SELECT e_no, e_name, post, pay_rate, month, year, shift
FROM Empl
JOIN Duty_alloc ON Empl.e_no = Duty_alloc.e_no
WHERE e_no = 123 AND month = 'April' AND year = 2003 AND shift = 1;



//ii. Get the employees whose rate of pay is > or equal rate of pay of employees 'Sachin'.

SELECT e_name, pay_rate
FROM Empl
WHERE pay_rate >= (SELECT pay_rate FROM Empl WHERE e_name = 'Sachin');


//iii. Create a view for displaying minimum, maximum and average salary for all the posts.

CREATE VIEW post_salary_summary AS
SELECT post, MIN(pay_rate) AS min_salary, MAX(pay_rate) AS max_salary, AVG(pay_rate) AS avg_salary
FROM Empl
GROUP BY post;


//iv. Get count of different employees on each shift having post ‘manager’.

SELECT shift, COUNT(DISTINCT e_no) AS manager_count
FROM Duty_alloc
JOIN Empl ON Duty_alloc.e_no = Empl.e_no
WHERE post = 'manager'
GROUP BY shift;
