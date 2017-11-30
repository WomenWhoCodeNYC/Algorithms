def sieveOfEratosthenes(limit: raise)
	prime = []
	range = Array 2..limit

	while !range.empty?
		prime_number = range.shift
		prime << prime_number

		range.map do |num|
			range.delete(num) if num % prime_number == 0
		end
	end
	prime
end

print sieveOfEratosthenes(limit: 7)