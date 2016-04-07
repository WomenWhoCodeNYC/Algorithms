def isPalindrome(word)
	return word.delete(' ').downcase == word.delete(' ').downcase.reverse
end

# puts isPalindrome("taco cat")
# puts isPalindrome("Taco cat")
# puts isPalindrome("dog")