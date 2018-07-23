def bubble_sort(str: raise)
	sorted = false
	until sorted
		sorted = true
		str.size.times do |n|
			next if n == 0
			# swap if prior number is more than the first num
			if str[n-1] > str[n] 
				str[n-1], str[n] = str[n], str[n-1]  
				sorted = false
			end
		end
	end
	str
end


print bubble_sort(str: "zjbbca")