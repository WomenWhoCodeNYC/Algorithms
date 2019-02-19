# Roman Numerals

We're going to write a method that converts an integer to its Roman numeral equivalent. In other words, if we give our method the Arabic number 476, our method will return the Roman numeral CDLXXVI.

### Tests
RSpec tests are included. The files containing our tests are located in the `spec/` directory. You only have one test file:  `spec/roman_numerals_spec.rb`. In order for the tests to run, be sure you have
the `rspec` gem installed on your computer.

To run tests from the command line, navigate to the application's root directory and run the `rspec` command.  This command will look for a `spec/` directory.  It will look at each of the files in the `spec/` directory and run any file whose filename ends in *_spec.rb*. **(NOTE: While the test setup currently only supports Ruby, this problem is doable in any programming language)**

###Release 0 : Old Roman Numerals

| Arabic Number  | Roman Numeral |
| -------------- | ------------- |
| 1              | I             |
| 5              | V             |
| 10             | X             |
| 50             | L             |
| 100            | C             |
| 500            | D             |
| 1000           | M             |

*Table 1*. Arabic number and their old Roman numeral equivalents.


In the early days of Roman numerals, the Romans built their numerals from the individual characters in Table 1 (e.g., I, V, X, etc.) written largest value to smallest from left to right.  To determine the value of any numeral, they used straight addition.  I is equivalent to 1.  II is equivalent to 1 + 1, or 2.  VIIII is equivalent to 5 + 1 + 1 + 1 + 1, or 9.

Write a method `convert_to_roman`.  When passed an integer between 1 and 3000, this method returns a string containing the proper old Roman numeral.  In other words, `convert_to_roman(4)` should return the string `'IIII'`.  

### Release 1: Options for Modern Roman Numerals

| Arabic Number | Roman Numeral |
| ------------- | ------------- |
| 4             | IV            |
| 9             | IX            |
| 14            | XIV           |
| 44            | XLIV          |
| 99            | XCIX          |
| 400           | CD            |
| 944           | CMXLIV        |

*Table 2*.  Modern Roman numeral examples.

Eventually, the Romans changed systems.  Now, putting a smaller numeral before a larger one meant you had to subtract the smaller one.  So, instead of 4 being represented by 1 + 1 + 1 + 1, it was now 5 - 1, or IV.  4 was not the only value affected (see Table 2 for more examples).

Update your method so that it will give back either old Roman numerals or modern Roman numerals. Allow users to specify that they want modern Roman numerals by passing in an options hash like `{ modern: true }`, which has a `:modern` key with a value of `true`.

```ruby
def convert_to_roman(arabic_number, options = {})
  # code ...
end
```

*Figure 1*.  Updated method definition which accepts an options hash.


### Release 2: Return Modern Roman Numerals

```ruby
convert_to_roman(4)
 => "IIII"

convert_to_roman(4, { modern: true })
 => "IV"
```

*Figure 2*.  The method returns either old or modern Roman numerals.
