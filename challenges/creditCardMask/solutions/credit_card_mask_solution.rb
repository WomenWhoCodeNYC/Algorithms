def maskify(ccnum)
  ccnum = ccnum.to_s
  last_four = ccnum[-4..-1]
  length_to_obscure = ccnum.length - 4
  obscured = ""
  length_to_obscure.times { obscured << "#" }
  obscured += last_four
end


p maskify("4556364607935616")
# "############5616"

p maskify(4556364607935616)
# "############5616"

p maskify("Skippy")
# "##ippy"
