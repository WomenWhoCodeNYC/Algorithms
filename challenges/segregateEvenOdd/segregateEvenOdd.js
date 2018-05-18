function sort(arr){
  let even = [];
  let odd = [];

  for (var i = 0; i <arr.length; i++){
    if(arr[i]%2 === 0){
      even.push(arr[i]);
    } else {
      odd.push(arr[i]);
    }
  }

  return even.concat(odd);
}


console.log(sort([1,9,5,3,2,6,7]));
