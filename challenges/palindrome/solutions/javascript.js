//Create a function called isPalindrome() that returns true or false depending on whether the string is a palindrome.
//A palindrome is a string of letters that can be read the same backward and forward. An example is 'Taco cat'.
//Extension: Make the function resursive.

function isPalindrome(str){
  var forwardStr = str.toLowerCase().replace(/ /g, '');
  var chars = forwardStr.split('');
  var length = chars.length;
  var reverseStr = '';
  for(var i = length-1; i >= 0; i--){
    if (chars[i] != ' '){
      reverseStr += chars[i];
    }
  }
  if(forwardStr === reverseStr){
    return true;
  }
  return false;
}
//some tests
console.log('Taco cat', isPalindrome('Taco cat'));
console.log('hat', isPalindrome('hat'));
console.log('a Man a Plan a canal panama', isPalindrome('a Man a Plan a canal panama'));

//Bonus! Recursion!
function isPalindromeRecursive(str){
  str = str.replace(/ /g, '');
  var length = str.length;
  if (length < 2){
    return true;
  }
  if (str[0] === str[length -1]){
    return isPalindromeRecursive(str.slice(1, length-1));
  }
  return false;
}
//more tests
console.log('aba', isPalindromeRecursive('aba'));
console.log('abat', isPalindromeRecursive('abat'));
console.log('ababa', isPalindromeRecursive('ababa'));
console.log('aa a', isPalindromeRecursive('aa a'));

// Submitted by [Sarah Zinger](https://github.com/sarahzinger)
