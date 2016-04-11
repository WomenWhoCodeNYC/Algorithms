[The following problem is taken from Project Euler](https://projecteuler.net/problem=1)

"If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000."

```
var sum = 0, i = 2;
while (i < 1000){
  if (i % 3 === 0 || i % 5 === 0){
    sum +=i;
  }
  i++;
}
console.log(sum);
window.alert(sum);

```
