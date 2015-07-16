There are several ways to do this problem. One way is to sort the array and then look for the longest consecutive streak of numbers which will then be next to one another since the array is sorted (this will take O(nlogn) time for the sorting and O(n) time to find the longest consecutive number range for a total of O(nlogn) time complexity).

However, another approach is to keep track of which numbers have already been seen and go through the array only once. This takes O(n) time. That solution is below.

Javascript
``` javascript
function lcr(arr) {
    var nums = arr.slice();
    var bestLength = 0;
    var bestStart = 0;
    while (nums.length) {
        var value = nums.shift();
        var start = value;
        while (nums.indexOf(start-1) > -1) {
            nums.splice(nums.indexOf(start-1), 1);
            start--;
        }
        var end = value;
        while (nums.indexOf(end+1) > -1) {
            nums.splice(nums.indexOf(end+1), 1);
            end++;
        }
        var length = end - start + 1;
        if (length > bestLength) {
            bestLength = length;
            bestStart = start;
        }
    }
    var longestRange = [ ];
    for (var i= bestStart; i < bestLength + bestStart ; i++) {
        longestRange.push(i);
    }
    return longestRange;
}
```




