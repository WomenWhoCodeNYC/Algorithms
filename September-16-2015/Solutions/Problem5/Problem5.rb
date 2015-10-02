def sum_pairs(ary, total)

  # Built a reverse index of the positions of each value in the array.
  indices = {}
  ary.each_with_index do |value,index|
    indices[value] ||= []
    indices[value] << index
  end

  best_candidate = nil
  max_index = ary.size
  ary.each_with_index do |value,index|
    # Stop looking when we pass the rightmost element of an already-found pair
    break if index == max_index

    # Find the locations to the left of the value needed to make the current value add up to the index
    complement = total - value
    complement_locations = indices[complement]
    complement_locations.select! { |l| l > index } if complement_locations

    # The current pair is our best candidate if its rightmost element is to the left of the current best
    if complement_locations && (rightmost_index = complement_locations.first) && rightmost_index < max_index
      best_candidate = value, complement
      max_index = rightmost_index
    end
  end
  return best_candidate
end

p sum_pairs([11, 3, 7, 5], 10)

p sum_pairs([4, 3, 2, 3, 4], 6)

p sum_pairs([0, 0, -2, 3], 2)

p sum_pairs([10, 5, 2, 3, 7, 5], 10)

big_ary = (1..10_000_000).map{rand(-10..10)}

p sum_pairs(big_ary, 15)

p sum_pairs(big_ary, 21)
