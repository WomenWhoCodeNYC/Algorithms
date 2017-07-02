# O(1) time effi.
def maskify(str: raise)
	return str if str.size <= 4
	"#{'#' * (str.size - 4)}#{str[-4..-1]}" 
end

puts maskify(str:"4556364607935616") == "############5616"
puts maskify(str: "1") ==                "1"
puts maskify(str: "") ==                 ""
puts maskify(str: "Skippy") == "##ippy"