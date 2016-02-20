=begin

INPUT, OUTPUT
  ['abc' ,  ["abc", "acb", "bac", "bca", "cab", "cba"]],
  [1 , false],
  ['asdf' , false],
  ['' , false]

PROCESS
STEP1: validate type is String and length == 3 or return false
STEP2: use Ruby array.permutation method :)
STEP3: format the results
=end

#ANSWER
def permutate(str)
  #STEP1
  return false if str.nil?
  return false unless str.is_a? String
  return false unless str.length == 3
  
  #STEP2
  def combinations(str)
    perms = str.split(//).permutation.to_a 
    result = []
    perms.each {|perm| result << perm.join(',').gsub(',','')}
    return result
  end
  
  #STEP3
  perms = combinations(str)
  return perms
end

#TEST
questions = [
  [1 , false],
  ['asdf' , false],
  ['' , false],
  ['abc', ["abc", "acb", "bac", "bca", "cab", "cba"]] #Note: order of the perm will change if ex. 'bac'
]

questions.each do |q|
  permutate(q[0]) == q[1] ?  (puts 'Correct!'): (puts 'Wrong')
end