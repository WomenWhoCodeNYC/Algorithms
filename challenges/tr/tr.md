tr
=

tr (translate or transliterate) is a common shell program used to replace certain characters in a string with others. It's probably installed in your shell. You can test it out:

    tr abc ABC <<<charles

should produce

    ChArles


tr takes three arguments: *from*, *to*, and *str*. Each of these is given as a string. The output is *str*, except with every character that appears in *from* translated to the corresponding character in *str*. Your challenge is to implement this as a function in the language of your choice, without using built-in string manipulation functions.

Test cases:

```

tr("abc","123","dcba") => "d321"

tr("abc","123","LOBSTER") => "LOBSTER"

tr("123", "abc", "bad") => "bad"

tr("1a","a1","aax11") => "11xaa"


```

Bonus points:

 Does your implementation modify *str* in-place, or does it create a new string? Modifying it in-place saves memory, but loses the content of the original string. Try writing an alternate implementation that works the other way.
