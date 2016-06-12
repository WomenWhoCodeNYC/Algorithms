def factors(array)
    array.combination(2).to_a.map{|set| set.inject(:*)}
end

def palindromes
    (998001.downto(10000)).to_a.select{|x| x == x.to_s.reverse.to_i}
end

def palindromic
    palindrome = []
    palindromes.each do |item|
        factor_array = (999.downto(100)).to_a.select{|x| item % x == 0}
        palindrome << item if factors(factor_array).include?(item)
        break if palindrome.length == 1
    end
    palindrome[0]
end
