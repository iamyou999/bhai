// Creating Teachers collection
db.createCollection("Teachers")
db.Teachers.insertMany([
  { Tname: "John Doe", dno: 1, Experience: 5, Salary: 12000, Date_of_Joining: new Date("2022-01-01") },
  { Tname: "Jane Smith", dno: 2, Experience: 8, Salary: 15000, Date_of_Joining: new Date("2020-05-15") },
  // Add more teacher documents as needed
])

// Creating Department collection
db.createCollection("Department")
db.Department.insertMany([
  { Dno: 1, Dname: "Computer Science" },
  { Dno: 2, Dname: "Physics" },
  // Add more department documents as needed
])

// Creating Students collection
db.createCollection("Students")
db.Students.insertMany([
  { Sname: "Alice", Roll_No: 1, Class: "SE" },
  { Sname: "Bob", Roll_No: 2, Class: "FE" },
  { Sname: "Charlie", Roll_No: 3, Class: "SE" },
  // Add more student documents as needed
])

2.db.Teachers.find({ dno: 2, Salary: { $gte: 10000 } })

3.db.Students.find({ $or: [{ Roll_No: 2 }, { Sname: 'xyz' }] })

4.db.Students.updateOne({ Roll_No: 5 }, { $set: { Sname: "UpdatedName" } })

5.db.Students.deleteMany({ Class: 'FE' })

6.db.Students.createIndex({ Roll_No: 1 })
