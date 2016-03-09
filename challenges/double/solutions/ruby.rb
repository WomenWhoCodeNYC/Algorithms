=begin

INPUT EXAMPLES       OUTPUT EXAMPLES
1. 2                        4
2. '2'                'Not a number!'
3. "str"              'Not a number!'
4. 100,000            'Not a number!'



PROCESS
1. Validate is_a? integer
2. 'Not a number!' if != integer and return
3. Multiply number * 2
=end

#ANSWER
def double(num)
  return 'Not a number!' unless num.is_a? Integer
  num * 2
end


#TESTING
problems = [
  [2 ,  4],
  ['2'  , 'Not a number!'],
  [ "str", 'Not a number!'],
  [ nil, 'Not a number!'],
  ['100,000', 'Not a number!']
]

problems.each do |problem|
  if double(problem[0]) == problem[1]
    puts 'Correct!'
  else
    puts 'Wrong'
  end
end

#submitted by [Dushyanthi Pierish](https://github.com/dushi27)
