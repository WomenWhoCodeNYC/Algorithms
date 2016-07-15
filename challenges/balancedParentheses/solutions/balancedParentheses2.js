function matchBraces(string) {

    if (string.length % 2 !== 0) return false;
    var brackets = ["()", "[]", "{}"];

    function checkBrackets(reducedString) {
        var countReduction = 0;
        brackets.forEach(function(bracket) {
            var originalLength = reducedString.length;
            reducedString = reducedString.split(bracket).join('');
            if (originalLength !== reducedString.length) countReduction++;
        });
        if (reducedString === '') return true;
        if (countReduction === 0) return false;
        return checkBrackets(reducedString);
    }
    return checkBrackets(string);
}

matchBraces("(){}[][[]](())");

//submitted by Tiffany Poss https://github.com/tiffanyposs