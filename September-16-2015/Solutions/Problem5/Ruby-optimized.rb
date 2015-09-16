def sum_pairs(ary, total)

  previous_values = {}

  ary.each do |value|
    complement = total - value

    if previous_values[complement]
      return [complement, value]
    else
      previous_values[value] = true
    end
  end
  return nil
end

p sum_pairs([11, 3, 7, 5], 10)

p sum_pairs([4, 3, 2, 3, 4], 6)

p sum_pairs([0, 0, -2, 3], 2)

p sum_pairs([10, 5, 2, 3, 7, 5], 10)

big_ary = (1..10_000_000).map{rand(-10..10)}

p sum_pairs(big_ary, 15)

p sum_pairs(big_ary, 21)
