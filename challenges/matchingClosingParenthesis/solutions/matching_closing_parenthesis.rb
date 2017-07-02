def matching_closing_parenthesis(str: raise)
	paranthesis_index = []
	results = []
	
	str.size.times do |i|
		if str[i] == "("
			paranthesis_index << i
		elsif str[i] == ")"
			results << [paranthesis_index.pop, i]
		end
	end
	results
end

str = "Lorem ipsum (dolor sit amet, (consectetur adipiscing) elit, (sed do (eiusmod tempor incididunt) ut labore) et dolore magna) aliqua."
p matching_closing_parenthesis(str: str) #=> [[29, 52], [68, 94], [60, 105], [12, 122]]