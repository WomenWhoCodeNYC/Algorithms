#submitted by [Julie Kwok](https://github.com/kwokster10)

# regex library
import re

def pig_latin_translator(word):
  # checks that a word (only letters) is passed in
  if re.match('^[A-Z]+$', word, flags=re.I):
    # change case to lowercase
    word = word.lower()
    # checks for qu words
    if re.match('\Aqu', word):
      return "%squay" % word[2:]
    # checking to see if the word starts with a vowel
    elif re.match('(\A[aeiou])', word):
      return '%sway' % word
    else:
      # index of first vowel of word if it doesn't begin with y
      if word[0] != "y":
        first_vowel = re.search('[aeiouy]', word)
      else:
        first_vowel = re.search('[aeiou]', word)

      v_index = word.index(word[first_vowel.start()])
      return "%s%say" % (word[v_index:], word[:v_index])
  else:
    return "Sorry, I only take one word composed of only letters."
