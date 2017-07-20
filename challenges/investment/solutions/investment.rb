def value_of_the_investment(investment: raise, rate: raise, num_years: raise)
	# assumes the rate is given as a percent decimal
	num_years.times do |yr| 
		investment = (investment * rate) + investment
	end
	investment
end

puts "$1000 at 10% for 3 years will yeild #{value_of_the_investment(investment: 1000, rate: 0.10, num_years: 3)}"