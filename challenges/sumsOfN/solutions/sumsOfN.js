// This problem can be thought about recursively.
//
// If we want to find the sum of a number, n, we can do so either by using the number
// (in which case the sum  would just be n) or without using the number
// (in which case we look at the case for n-1). For example, if we want the ways to write 4,
// we can do this either by using 4 (which would just be the result "4")
// or by using a maximum number of 3. For 3, we can apply this same logic and so on.


// Javascript solutions:
function printPartitions(n) {
    var partitions = [ ];
    function generatePartitions(targetNum, max, curr) {
        if (targetNum === 0) {
            partitions.push(curr.substr(0,curr.length-1)); //need to trim plus sign at end
        }
        else {
            if (max > 1)
                generatePartitions(targetNum, max-1, curr);
            if (max <= targetNum)
                generatePartitions(targetNum-max, max, max + "+" + curr);
        }
    }
    generatePartitions(n,n,"");
    return partitions
}

//submitted by [seemaullal](https://github.com/seemaullal)
