# Assumes the dictionary of words are in an Hash with sort list set of keys
DICTIONARY = {
	'a' => 1,
	'an' => 1,
	'fun' => 1,
	'function' => 1,
	'is' => 1,
	'problem' => 1,
	'this'=> 1
}

# O(N) N being the length of the string
def space_separated(str: raise)
	first_index = 0
	last_index = 0
	results = []

	str.size.times do
		check_string = str[first_index..last_index]
		if DICTIONARY[check_string]
			results << check_string
			first_index = last_index += 1
			last_index = first_index
		else
			last_index += 1
		end
	end

	puts results.join(" ")
end

space_separated(str: 'thisisafunproblem') #=> this is a fun problem

# Potential Problem
# This should output this is a function problem
space_separated(str: 'thisisafunctionproblem') #=> this is a fun
