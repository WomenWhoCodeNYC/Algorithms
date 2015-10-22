/*## SeriesSum
Problem originally found on [codewars](http://www.codewars.com/)

Your task is to write a function which returns the sum of following series upto nth term(parameter).

`Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...`
*/

function adder(var n){
  if n===0 return 1;
  else return 1/(3n+1) + adder (n-1);
}
