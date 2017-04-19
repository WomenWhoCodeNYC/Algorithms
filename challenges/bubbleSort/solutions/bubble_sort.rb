def bubble_sort(array)
	constant_array = array.to_s

	array.each do |num|
		i = array.index(num)
		next_index = i + 1

		if array[next_index]
			next_num = array[next_index]
			if num > next_num
				array[i] = next_num
				array[next_index] = num
			end
		end

	end

	if array.to_s != constant_array
		bubble_sort(array)
	end

	array

end

print bubble_sort([5, 1, 4, 2, 8])
# expect [1, 2, 4, 5, 8]