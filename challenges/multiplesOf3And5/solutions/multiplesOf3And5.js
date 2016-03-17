function multipleSum(a, b, max){
    var sum = 0;
    var x = 0;
    while(x < max) {
        if(x % 3 === 0 || x % 5 === 0){
            sum += x;
        }
        x++;
    }
    return sum;
}

console.log(multipleSum(3,5, 1000) === 233168) //should return true
