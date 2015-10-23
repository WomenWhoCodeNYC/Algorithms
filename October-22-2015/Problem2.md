/*## SeriesSum
Problem originally found on [codewars](http://www.codewars.com/)

Your task is to write a function which returns the sum of following series upto nth term(parameter).

`Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...`
*/

function SeriesSum(n) {
    if(n === 0) return 1;
    return ( (1 /(3*n + 1) ) + SeriesSum(n - 1) );
}
