CHIT 20

db.createCollections("orderinfo");

db.orderinfo.insertMany([
    {
      cust_id:123,
      cust_name:"abc",
      status:"A",
      price:250
    }
]);

// db.orderinfo.createIndex({cust_id:1});

//db.orderinfo.createIndex({cust_id:1,cust_name:1,status:1,price:1});

// db.orderinfo.createIndex({cust_id:1},{unique:true});

// db.orderinfo.getIndexes();

// db.orderinfo.dropIndex("cust_id");
// db.orderinfo.dropIndex("cust_name");
// db.orderinfo.dropIndex("status");
// db.orderinfo.dropIndex("price");

db.createCollection("Student");

db.Student.insertMany([
    {Rollno:1,name:'Navin',subject:'DMSA',marks:78},
    {Rollno:2,name:'anusha',subject:'OSD',marks:75},
    {Rollno:3,name:'ravi',subject:'TOC',marks:69},
    {Rollno:4,name:'veena',subject:'TOC',marks:70},
    {Rollno:5,name:'Pravini',subject:'OSD',marks:80},
    {Rollno:6,name: 'Reena',subject: 'DMSA',marks:50},
    {Rollno:7,name:'Geeta',subject:'CN',marks:90},
    {Rollno:8,name:'Akash',subject:'CN',marks:85}
]);

// db.Student.aggregate([
//     {
//       $group:{
//       _id:"$subject",
//       maxMarks:{$max:"$marks"}
//      }
//     }
// ]);

// db.Student.aggregate([
//     {
//         $group:{
//             _id:"$subject",
//             minMarks:{$min:"$marks"}
//         }
//     }
// ]);

// db.Student.aggregate([
//     {
//         $group:{
//             _id:"$subject",
//             sumMarks:{$sum:"$marks"}
//         }
//     }
// ]);

// db.Student.aggregate([
//     {
//         $group:{
//             _id:"$subject",
//             avgMarks:{$avg:"$marks"}
//         }
//     }
// ]);

// db.Student.aggregate([
//     {
//         $group:{
//             _id:"$subject",
//             firstRecord: {$first:"$$ROOT"}
//         }
//     }
// ]);

// db.Student.aggregate([
//     {
//         $sort: { subject: 1, _id: 1 }
//     },
//     {
//         $group: {
//             _id: "$subject",
//             lastRecord: { $last: "$$ROOT" }
//         }
//     }
// ]);
