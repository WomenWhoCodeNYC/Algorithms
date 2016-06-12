def tribonacci(signature, nth)
  while signature.length < nth
    signature << signature[-3..-1].inject(:+)
  end
  signature
end

p tribonacci([1,1,1], 10)
# [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]

p tribonacci([0,0,1], 10)
# [0, 0, 1, 1, 2, 4, 7, 13, 24, 44]
