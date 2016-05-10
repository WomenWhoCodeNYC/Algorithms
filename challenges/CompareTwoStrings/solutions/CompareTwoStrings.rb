class StringToEnum
	attr_reader :enum, :word

	def initialize(word)
		@word = word
		@enum = transform_to_enum
	end

	def transform_to_enum
		@word.split('').to_enum
	end

	# Spaceship operator (similar to http://ruby-doc.org/core-1.9.3/Comparable.html)
	 #1 if self>other; 0 if self==other; -1 if self<other
	def <=> (other)
    self.word <=> other.word
  end
end

def compare_enums(word1, word2)
	return "Please provide words with at least one letter!" unless (word1.count > 0 && word2.count > 0)
	
	current1 = word1.next
	current2 = word2.next

	while ((current1 && current2) && (current1 == current2))
		begin	
			current1 = word1.next
		rescue StopIteration
			current1 = nil
		end

		begin
			current2 = word2.next
		rescue StopIteration
			current2 = nil
		end
	end

	if current1 && current2
		return current1 > current2 ? 1 : -1
	end

	if current1 && !current2
		return 1
	end

	if current2 && !current1
		return -1
	end

	return 0
end

word1 = StringToEnum.new("geeks")
word2 = StringToEnum.new("geeks")

# Original way I had thought to tackle the problem
puts compare_enums(word1.enum, word2.enum)

# Added after someone told me about spaceship operator (more efficient)
puts word1 <=> word2
