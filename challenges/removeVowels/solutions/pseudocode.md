Psuedocode
```
function removeVowels(string)
    tmpString = ''
    loop through each letter of the string
        if the letter is not a vowels
            add it to tmpString
    return tmpString
```

A Javascript solution
``` javascript
function removeVowels(str) {
    var tmpStr = '', vowels = ['a','e','i','o','u'];
    for (var i = 0; i <str.length; i++) {
        if (vowels.indexOf(str.charAt(i).toLowerCase()) === -1) //not a vowel
            tmpStr += str.charAt(i);
    }
    return tmpStr;
}
```


Ruby
```
  def removeVowels(str)
   str.is_a?(String) ? str.delete!('aeiouAEIOU') : str
  end
```
