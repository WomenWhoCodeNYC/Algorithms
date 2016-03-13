function SimpleMode(arr) {

    var map = {};
    var mode = 0;
    var highestFreq = 0;

    for (var i = 0; i < arr.length; i++) {
        if (map[arr[i]]) {
            map[arr[i]]++;
        } else {
            map[arr[i]] = 1;
        }
    }
    
    for (var i = 0; i < arr.length; i++) {
        if (map[arr[i]] > highestFreq) {
            highestFreq = map[arr[i]];
            mode = arr[i];
        }
    }
    
    if (highestFreq !== 1) {
        return mode;
    } else {
        return -1;
    }
    
    return mode;
}