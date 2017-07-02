def even_odd_letters?(word: raise)
	raise ArgumentError unless !word.nil? and word.gsub(/\W+/, '').size > 0
	(word.gsub(/\W+/, '').chars.uniq.size)&1==0 ? (p "#{word} has even number of unique letters") : (p "#{word} has odd unique letters")
end

even_odd_letters?(word: "w") #=> odd
even_odd_letters?(word: "AA") #=> odd
even_odd_letters?(word: "AAB") #=> even
even_odd_letters?(word: "") #=> ArgumentError
even_odd_letters?(word: nil) #=> ArgumentError