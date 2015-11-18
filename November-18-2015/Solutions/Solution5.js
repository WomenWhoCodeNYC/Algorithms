var isBalanced = function(str) {
    var stack = [];
    var parenthesesHash = {
        '[':']',
        '(':')',
        '{':'}'
    };
    
    if (str.length === 0) {
        return 'String length should be greater than 0';
    }
    
    if (str.length % 2 !== 0) {
        return false;
    }
    
    for (var i = 0; i < str.length; i++) {
        var char = str.charAt(i);
        if (parenthesesHash[char]) {
            stack.push(char);
        } else if (char !== parenthesesHash[stack.pop()]) {
            return false;
        }
    }
    
    return true;
}

console.log(isBalanced('[()]{}{[()()]()}')); // return true
console.log(isBalanced('[()]{}{[()(]()}')); // return false
console.log(isBalanced('[{{]')); // return false
console.log(isBalanced('')); // return 'String length should be greater than 0'
