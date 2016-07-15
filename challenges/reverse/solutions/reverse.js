var obj = { 
    "a": 1, 
    "b": 2, 
    "c": 1, 
    "d": 3 
};

function reverse(obj) {
    var reversed = {};
    for (var key in obj) {
        var value = obj[key];
        if (reversed[value]) {
            reversed[value].push(key);
        } else {
            reversed[value] = [key];
        }
    }
    return reversed;
}

reverse(obj);

//submitted by Tiffany Poss https://github.com/tiffanyposs