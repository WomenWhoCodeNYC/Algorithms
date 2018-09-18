# Password generator

## Problem

Create a password generation program which will generate passwords containing random ASCII characters from the following groups:

```
         lower-case letters:  a ──► z
         upper-case letters:  A ──► Z
                     digits:  0 ──► 9
 other printable characters:  !"#$%&'()*+,-./:;<=>?@[]^_{|}~ 
 (the above character list excludes white-space, backslash and backtick)
 ```

 The generated password(s) must include:
```
   at least one lower-case letter
   at least one upper-case letter
   at least one digit (numeral) 
   at least one symbol/"other" character
   ```

The user must be able to specify the password length and the number of passwords to generate.

The passwords should be displayed or written to a file, one per line.

Extra credit:
Allow the user to specify a seed value.

Give the option of excluding visually similar characters, such as `l, I, 1` and `O, 0`.

[Source](http://rosettacode.org/wiki/Password_generator)
