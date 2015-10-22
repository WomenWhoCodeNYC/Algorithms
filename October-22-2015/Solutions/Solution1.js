// javascript solution

function cookingTime(eggs) {
  var time = 0;
  while (eggs > 0) {
    time += 5;
    eggs -= 8;
  }
  return time;
}

// javascript tests

console.log(cookingTime(0) === 0 );

console.log(cookingTime(5) === 0 );

console.log(cookingTime(10) === 10);
