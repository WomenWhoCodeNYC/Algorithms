[The following problem is taken from Project Euler](https://projecteuler.net/problem=3)

"The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?"

```
function primeFactors(num){
var arr = [], arr2 = [];
  for (var i = 1; i < num; i++){
    // if num divisible by 1,2,3..., push to the array;
    if(num % i === 0 ){
      arr.push(i);
    }
  }

  for(var j = 0; j < arr.length; j++){
    if(arr[j] % 1 == 0 && arr[j] % arr[j] == 0){
      arr2.push(arr[j]);
    }
  }
  return Math.max(arr2);
}

thoughts:
function primeFactors(num){
var arr = [], arr2 = [];
  function factors(num, arr){
  for (var i = 1; i < num; i++){
    // if num divisible by 1,2,3..., push to the array;
    if(num % i === 0 ){
      arr.push(i);
    }
  }
    return arr;
}

  for(var j = 0; j < arr.length; j++){
    if(arr[j] % 1 === 0 && arr[j] % arr[j] === 0){
      arr2.push(arr[j]);
    }
  }
  return Math.max(arr2);
}
primeFactors(600851475143);
```
