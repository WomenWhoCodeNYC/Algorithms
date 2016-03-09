def sum_series(n)
  n.times.map { |i| 1/(i*3+1).to_f}.reduce(:+).round(3)
end

# Tests

puts sum_series(1)==1
puts sum_series(2)==1.25
puts sum_series(3)==1.393
puts sum_series(4)==1.493
puts sum_series(5)==1.57

#submitted by https://github.com/leahgoldberg
