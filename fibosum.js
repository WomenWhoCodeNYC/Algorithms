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
