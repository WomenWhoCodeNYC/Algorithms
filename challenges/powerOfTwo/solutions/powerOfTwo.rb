def power_of_2?(number)
  return false if number == 0 || number == 1
  while (number % 2 == 0)
    number /= 2
  end
  return number > 1 ? false : true
end

p power_of_2?(0) == false
p power_of_2?(1) ==  false
p power_of_2?(4) == true
p power_of_2?(5) == false
p power_of_2?(12) == false
p power_of_2?(64) == true

def power_of_two?(number)
  return number & (number - 1) == 0
end

p power_of_two?(4) == true
p power_of_two?(5) == false
p power_of_two?(12) == false

