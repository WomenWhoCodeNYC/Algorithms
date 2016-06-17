/*
Explanation : instead of assigning and reassigning variables 'first', 'second', etc
I used a js native array and implement it as a queue with initial values 1 and 2 (some may use classic 1,1)
process.hrtime() is a Node environment time which returns tuplet array of [sec,nanosec]
I wish I knew of a mathy way to get a better than O(n) runtime though!
*/


var arr = [1,2];
var accumulator = 0;
var next= null;
var result = (function(){
  var start =  process.hrtime();
  while(arr[1]<4000000){
    next = arr[0]+arr[1];
    if (next%2===0){
      accumulator+=next;
    }

    arr.push(next);
    arr.shift();

  }
  var end = process.hrtime();
  var runtime = [end[0]-start[0],end[1]-start[1] ];
  return {acc: accumulator, time: runtime};

})();
console.log(result);
