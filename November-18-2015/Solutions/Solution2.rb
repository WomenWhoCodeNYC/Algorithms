def translate(word)
  change = false

  if word == word.capitalize
    word.downcase!
    change = true
  end

  if (word[0] =~ /[aeiou]/)
    word = word + 'way'
  elsif word.include?('qu') && (word.index('qu') == 0)
    word = word[2..-1].concat('quay')
  else
    idx = word.index(/[aeiou]/)
    word = word[idx..-1].concat(word[0...idx]).concat('ay')
  end

  word.capitalize! if change
  return word
end





def pig_latin(str)
  result = str.split(" ").map { |word|
    translate(word)
    }.join(" ")
  result
end


p pig_latin("Quiet tree") =="Ietquay eetray"
p pig_latin("apple quick Fox") == "appleway ickquay Oxfay"

