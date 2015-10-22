// Javascript solution
var sharePrice = function(invested, changes) {
  var finalPrice = invested;
  changes.forEach( function(percent) {
    var change = finalPrice * percent * .01;
    finalPrice += change;
  });
  return finalPrice;
};

// ES6 solution
// sharePrice (invested, changes) => {
//   var finalPrice = invested;
//   changes.forEach((percent) => {
//     var change = finalPrice * percent * .01;
//     finalPrice += change;
//   })
//   return finalPrice
// }

//Tests

console.log(sharePrice(100, [])===100);
console.log(sharePrice(100, [-50, 50]) === 75);
console.log(sharePrice(100, [-50, 100]) === 100);
console.log(sharePrice(100, [-20, 30]) === 104);
