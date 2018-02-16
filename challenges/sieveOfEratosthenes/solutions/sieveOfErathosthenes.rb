def find_primes(limit)
  numbers = (2..limit).to_a
  prime = 2
  index = 0
  while prime <= limit/2
    (numbers[(index + 1 )]..limit).to_a.each do |number|
      if number % prime == 0
        numbers -= [number]
      end
    end
    index += 1
    prime = numbers[index]
  end
  numbers
end

puts find_primes(5) == [2,3,5]
puts find_primes(10) == [2,3,5,7]

def sum_primes(primes)
  sum = 0
  primes.each do |number|
    sum += number
  end
  sum
end

puts sum_primes(find_primes(5)) == 10
