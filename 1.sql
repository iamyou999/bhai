CHIT 1
CREATE TABLE Customer(
  C_ID int,
  Cname varchar(50),
  City varchar(50),
  primary key (C_ID)
);

CREATE TABLE Account(
   C_ID int,
   Acc_type varchar(50),
   Amount int,
   foreign key(C_ID) references Customer(C_ID)
);

insert into Customer values
   (1,"John","Nashik"),
   (2,"Seema","Aurangabad"),
   (3,"Amita","Nagar"),
   (4,"Rakesh","Pune"),
   (5,"Samata","Nashik"),
   (6,"Ankita","Chandwad"),
   (7,"Bhavika","Pune"),
   (8,"Deepa","Mumbai"),
   (9,"Nitin","Nagpur"),
   (10,"Pooja","Pune");

insert into Account values
   (1,"Current",5000),
   (2,"Saving",20000),
   (3,"Saving",70000),
   (4,"Saving",50000),
   (5,"Current",35000),
   (6,"Loan",30000),
   (7,"Saving",50000),
   (8,"Saving",90000),
   (9,"Loan",8000),
   (10,"Current",45000);

/*
SELECT c.Cname,a.Acc_type,a.Amount from Customer c
JOIN Account a on c.C_ID=a.C_ID
WHERE Acc_type='Saving';
*/

/*
SELECT c.Cname,a.Acc_type,a.Amount
From Customer c
NATURAL JOIN Account a;
*/

/*
SELECT c.Cname,a.Acc_type,a.Amount
From Customer c 
LEFT JOIN Account a on c.C_ID=a.C_ID;
*/

/*
SELECT c.Cname,a.Acc_type,a.Amount
From Customer c 
RIGHT JOIN Account a on c.C_ID=a.C_ID;
*/

/*
SELECT c.Cname,c.City
FROM Customer c
WHERE c.city=(SELECT city FROM Customer WHERE Cname='Pooja');
*/

/*
SELECT a.Acc_type, a.amount
FROM Account a
WHERE a.amount < (SELECT AVG(amount) FROM Account);
*/

/*
SELECT c.C_ID
FROM Customer c
NATURAL JOIN Account a
WHERE a.amount=(SELECT MAX(Amount) From Account);
*/

/*
SELECT a.C_id, a.amount, a.Acc_Type
FROM Account a
WHERE (a.Acc_Type, a.amount) IN (SELECT Acc_type, MIN(amount) FROM Account GROUP BY Acc_type);
*/

SELECT a.amount, a.Acc_Type
FROM Account a
WHERE a.amount > (SELECT MAX(amount) FROM Account WHERE Acc_Type = 'Saving');
