CHIT 22

db.createCollection("orderinfo");
db.orderinfo.insertMany([
    {
        cust_id:123,
        cust_name:"abc",
        status:"A",
        price:250
    },
    {
        cust_id:124,
        cust_name:"xyz",
        status:"B",
        price:430
    }
    
]);

// db.orderinfo.find({price:{$gte:250,$lte:450}},{cust_name:1,_id:0});

// db.orderinfo.updateMany(
//     {cust_id:123},
//     {$inc:{price:10}}
// );

// db.orderinfo.updateMany(
//     {cust_id:124},
//     {$inc:{price:-5}}
// );

// db.orderinfo.find({});

// db.orderinfo.remove({},{$unset:{status:1}});

// db.orderinfo.find({$or:[{status:'A'},{price:250}]},{cust_name:1,_id:0});
