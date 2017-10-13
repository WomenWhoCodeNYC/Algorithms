def two_sum(array, num)
  array.each_with_index do |current_num, index|
    num_to_search_for = num - current_num
    return index, array.index(num_to_search_for) if array.include? num_to_search_for
  end
end

# Tests

# test_one = two_sum([2, 7, 11, 15], 9)
# puts test_one == [0,1]

# test_two = two_sum([2, 7, 11, 15], 17)
# puts test_two == [0,3]