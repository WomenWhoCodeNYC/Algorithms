function SimpleMode(arr) {

  // initialize
  var num=arr[0], count = 1; maxCount = 0; mode =0;
  
  arr = arr.sort();
  
  for(var i = 0; i< arr.length; i++){
    
    if(count>maxCount){
        mode = num;
        maxCount = count;
      }
    if(num === arr[i]){
      count++;
    }else{
      num = arr[i];
      count = 1;
    }
  }
  
  return mode;
}



SimpleMode([1,1,4,450,450,450,450,7,2,2,2,23,4,23,5,8,8,7,8,8,8,8,8,7,8,8,333,4])