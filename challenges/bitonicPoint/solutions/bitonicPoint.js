function bitonicPoint(arr){
  var left = 0;
  var right = arr.length;
  var pointer = Math.floor((right-left)/2);
  console.log('START:', pointer);

  while (left <= right){
    if(arr[pointer]>arr[pointer-1] && arr[pointer]>arr[pointer+1]){
      console.log("We have made it:", pointer);
      return pointer;

    } else if (arr[pointer] < arr[pointer+1]){
      console.log("We still be increasing", pointer);
      left = pointer;
      pointer = Math.floor((right-left)/2);
    } else if (arr[pointer]>arr[pointer+1]){
      console.log("We have overshot:", pointer);
        right = pointer;
        pointer = Math.floor((right-left)/2);
    }
  }
  return null;
}

console.log("This should return 3:", bitonicPoint([2,3,4,5,2,1]));
