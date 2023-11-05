function map() {
  emit(this.state, this.population);
}

function reduce(key, values) {
  var sum = 0;
  for (var i = 0; i < values.length; i++) {
    sum += values[i];
  }
  return sum;
}


db.city.mapReduce(
  map,
  reduce,
  {
    out: "statewise_population"
  }
)



db.city.mapReduce(
  map,
  reduce,
  {
    out: "citywise_population"
  }
)



db.city.mapReduce(
  map,
  reduce,
  {
    out: "typewise_population"
  }
)
