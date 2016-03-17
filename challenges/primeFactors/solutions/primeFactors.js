///VERY INEFFICIENT SOLUTION...can you do better ? :)
function isPrime(x){
    var y = 2;
    while(y < x){
        if (x % y === 0) {
            return false;
        }
        y++;
    }
    return true;
}

function isFactor(potentialFactor, num){
    return num % potentialFactor === 0;
}

function largestPrimeFactor(num) {
    var x = num;
    while(x > 0){
        if(isPrime(x)){
            if(isFactor(x, num)){
                return x;
            }
        }
        x--;
    }
}

console.log(largestPrimeFactor(13195)===29) //should equal true
