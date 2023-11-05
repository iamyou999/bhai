db.createCollection("orderinfo");

db.orderinfo.insertMany([
    {
      cust_id:123,
      cust_name:"abc",
      status:"B",
      price:250
    }
]);

// db.orderinfo.updateMany({},{$set:{Age:30}});

// db.orderinfo.find({});

// db.orderinfo.createIndex({cust_id:1,cust_name:1,status:1,price:1});
// db.orderinfo.aggregate([
//     {
//         $group:{
//             _id:"$cust_id",
//             doc:{$first:"$$ROOT"}
//         }
//     },

//     {
//          $replaceWith:"$doc"
//     }
// ]);

// db.orderinfo.aggregate([
//     {
//     $group:{ 
//        _id:"$status",
//         averageprice:{$avg:"$price"}
//     }
//     }
// ])

// db.orderinfo.updateMany({status:"B"},{$set:{cust_name:"Andrew"}});
