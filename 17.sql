1)SELECT DISTINCT Address FROM Employee;
2)SELECT MAX(Salary) AS MaximumSalary, MIN(Salary) AS MinimumSalary FROM Employee;
3)SELECT * FROM Employee ORDER BY Salary ASC;
4)SELECT EName FROM Employee WHERE Address IN ('Nasik', 'Pune');
5)SELECT EName FROM Employee WHERE commission IS NULL;
6)UPDATE Employee SET Address = 'Nashik' WHERE Name = 'Amit';
7)SELECT * FROM Employee WHERE Name LIKE 'A%';
8)SELECT COUNT(*) FROM Employee WHERE Address = 'Mumbai';
9)SELECT DISTINCT Addr FROM Employee
UNION
SELECT DISTINCT Addr FROM Project;
10)SELECT Addr, MIN(Salary) AS MinimumSalary FROM Employee GROUP BY Addr;
11)SELECT Addr, MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY Addr
HAVING MAX(Salary) > 26000;
12)DELETE FROM Employee WHERE Salary > 30000;
