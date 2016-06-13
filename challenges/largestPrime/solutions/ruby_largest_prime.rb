def helper(num)
    prime = true
    (2...num).each{|x|
        prime = false if num % x == 0
        break if prime == false
    }
    prime
end

def largest_prime_factor(number)
    x = 2
    prime = []
    product = 1
    while product < number
        if ((number % x == 0) && (helper(x) == true))
            prime << x
            product *= x
        end
        x += 1
    end
    prime.last
end
