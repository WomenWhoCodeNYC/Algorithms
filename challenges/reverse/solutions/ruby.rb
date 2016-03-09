=begin

INPUT, OUTPUT
[{'a':1, 'b':2}, {1:'b', 2:'c'}],
[
   {"a": "1",
    "b": "2",
    "c": "1",
    "d": "3"}
,
    {"1": ["a", "c"],
    "2": ["b"]
    "3": ["d"]}
]

OPTIONS
1. use hash.inverte -> it will drop duplicate keys during the reverse
So;
1. validate is_a Hash
2. create an empty hash
3. Hash.each
 - checking if the key exisits ?  append : create the key and add the value

=end


#ANSWER
def reverse(hash)
  return unless hash.is_a? Hash

  newHash = {}

  hash.each do |k,v|
    if newHash.has_key? v
      newHash[v] << k
    else
      newHash[v] = [k]
    end
  end
  return newHash
end

#TEST
questions = [
  [{'a' => 1, 'b'=> 2}, {1 => ['a'], 2 => ['b']}],
  [
   {"a" => "1",
    "b" => "2",
    "c" => "1",
    "d" => "3"},

    {"1" => ["a", "c"],
    "2" => ["b"],
    "3" => ["d"]} ],
  [nil, nil],
  [[1,2], nil]
]

questions.each do |q|
  reverse(q[0]) == q[1] ?  (puts 'Correct!'): (puts 'Wrong')
end

#submitted by [Dushyanthi Pierish](https://github.com/dushi27)
