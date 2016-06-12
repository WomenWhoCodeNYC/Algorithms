def sum_square_diff(max)
    range = (1..max).to_a
    sum = range.map{|i| i ** 2}.inject(:+)
    square = range.inject(:+) ** 2
    square - sum
end
