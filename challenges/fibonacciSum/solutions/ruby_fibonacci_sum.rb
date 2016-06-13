def fibonacci_sum
    fib_array = [1, 2]
    while fib_array.last < 4000000
        fib_array << fib_array[-1] + fib_array[-2]
    end
    fib_array.select{|num| num % 2 == 0}.inject(:+)
end
