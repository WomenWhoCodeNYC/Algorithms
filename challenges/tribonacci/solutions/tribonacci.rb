def tribonnoci(sig, num)
	max_num = num-3
	(0...max_num).each do |i|
		sig << sig[i..i+2].reduce(:+)
	end
	sig
end

puts tribonnoci([0,1,1], 10)

