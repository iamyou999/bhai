/*Collection “orderinfo“ which contains the documents given as below(Perform on Mongo Terminal)
{
cust_id:123
cust_name:”abc”,
status:”A”,
price:250
}
i. find the average price for each customers having status 'A'
ii. Display the status of the customers whose amount/price lie between 100 and 1000
iii. Display the customers information without “_id” .
iv. create a simple index on onderinfo collection and fire the queries.*/
db.orderinfo.insertMany([
  {
    cust_id: 123,
    cust_name: "abc",
    status: "A",
    price: 250
  },
  {
    cust_id: 124,
    cust_name: "xyz",
    status: "A",
    price: 350
  },
  {
    cust_id: 125,
    cust_name: "pqr",
    status: "B",
    price: 500
  },
  {
    cust_id: 126,
    cust_name: "lmn",
    status: "A",
    price: 800
  },
  {
    cust_id: 127,
    cust_name: "def",
    status: "C",
    price: 1200
  }
]);
db.orderinfo.aggregate([
  {
    $match: {
      status: "A"
    }
  },
  {
    $group: {
      _id: "$cust_id",
      averagePrice: { $avg: "$price" }
    }
  }
]);
db.orderinfo.find({
  price: { $gte: 100, $lte: 1000 }
}, { status: 1, _id: 0 });
db.orderinfo.find({}, { _id: 0 });
db.orderinfo.createIndex({ cust_id: 1 });
