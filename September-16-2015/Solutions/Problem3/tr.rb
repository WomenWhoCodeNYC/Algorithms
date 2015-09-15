def tr(from, to, str)
  dictionary = {}
  from.size.times { |index| dictionary[from[index]] = to[index] }
  output = ''
  str.each_char { |char| output << (dictionary[char] || char) }
  output
end

p tr("abc","123","dcba")

p tr("abc","123","LOBSTER")

p tr("123", "abc", "bad")

p tr("1a","a1","aax11")
