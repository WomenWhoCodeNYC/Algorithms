=begin

INPUT, OUTPUT
['Taco cat , true],
['Tacocat , true],
["I", true],
['apple', false],
[123 , nil],
["", nil],
['*!*', true],
["#{'a' * 1000)", true]


using ASCII char set

OPTIONS
STEP 1: Validate i) length is > 0, it is a string and not nil
STEP 2: Remove white spaces from the string and downcase
STEP 3: create counter and when to stop (i)
STEP 4: recall matches until i == counter or if two edges of the string does not match
STEP 5: return results based on maches
=end

#ANSWER
def isPalindrome(str)
  #STEP 1,2
  def validate(str) 
    return nil if str.nil? 
    return nil if !str.is_a? String
    return nil if str.length <= 0
    str.gsub(' ', '').downcase
  end
  
  #STEP 3
  clean_string = validate(str)
  return nil if clean_string.nil?
  $i = (clean_string.length/2) 
  $counter = 0
  
  #STEP 4
  def matched(data)
    return result = true if $counter == $i
    return false if data[$counter] != data[($counter + 1) * -1]
    $counter += 1
    matched(data)
  end
  
  #STEP 5
  clean_string ? (return matched(clean_string)): (return nil)
end

#TEST
questions = [
  ['Taco cat' , true],
  ['Tacocat' , true],
  ["I", true],
  ['apple', false],
  [123 , nil],
  ["", nil],
  ['*!*', true],
  ["#{'a' * 1000}", true]
]

questions.each do |q|
  isPalindrome(q[0]) == q[1] ?  (puts 'Correct!'): (puts 'Wrong')
end