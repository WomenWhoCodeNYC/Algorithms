=begin
PROBLEM SUMMERY_________________
    - Remove vowles from a string

SAMPLE I/O_________________
    - 'string' #=> 'string'
    - '' #=> ''
    - 'efes_' #=> 'fs_'
    - 5 #=> nil
    - ('a' * 500) + ('b' * 20)  #=> letter 'b' 20 times

PSUDO__________________
    def removeVowels(string)
      validate not empty and string is a String

      string = str
      vowles = [list of vowles]
      loop though voweles array  (instead of the string cz string can be very long but vowles can be more predictable)
        substitute vowel with '' and update the string
      end

      return the str
    end

*Assume ASCII Char Set, but if necessary Latin characters can be added

submitted by https://github.com/dushi27
=end

def vowle_remover(str)
    #str = string

    #Validations
    return nil unless str.is_a? String

    #Init a list of vowles. Add Latin chars if necessary
    vows = ['a', 'e','i','o','u', 'A','E','I','O', 'U']

    vows.each do |v|
       str = str.gsub("#{v}", '')
    end

    return str
end

# TEST_________
examples = {:a => ['string', 'strng'], :b => ['',''] , :c =>[ 'efes_',  'fs_'], :d => [('a' * 500) + ('b' * 20), 'b' * 20], :e => [2, nil], :f => [2, nil]  }

examples.each do |k, v|
    result = vowle_remover v.first
    if result == v.last
        accuracy = 'correct'
    else
        accuracy = 'incorrect'
    end
    puts "result for #{k} is #{result} and its #{accuracy}"
end

=begin
TEST returns;
result for a is strng and its correct
result for b is  and its correct
result for c is fs_ and its correct
result for d is bbbbbbbbbbbbbbbbbbbb and its correct
=end
