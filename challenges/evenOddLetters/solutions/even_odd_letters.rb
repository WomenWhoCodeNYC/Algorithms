def even_odd_letters?(word: raise)
	raise ArgumentError unless !word.nil?
	letters = word.gsub(/\W+/, '') #extract letters from the word given

	# &1==0 binary test to check even/odd
	(letters.chars.uniq.size)&1==0 ? (p "#{word} has even number of unique letters") : (p "#{word} has odd unique letters")
end

even_odd_letters?(word: "w") #=> odd
even_odd_letters?(word: "AA") #=> odd
even_odd_letters?(word: "AAB") #=> even
even_odd_letters?(word: "") #=> even (cz 0 is an even number)
even_odd_letters?(word: nil) #=> ArgumentError