# Option 1 
# def get_file_extention(file_name: raise)
# 	extensions_ary = file_name.split(".")
# 	extensions_ary.size == 1 ? (return false) : (return extensions_ary.last)
# end

# Option 2 - Library function
def get_file_extention(file_name: raise)
	ext = File.extname(file_name).gsub(".","")
	ext.empty? ? false : ext
end

# Test cases
file_names = ["data.txt", "index.html.erb", ".aws.txt", "foo"]

file_names.each {|name| 
	puts "file name for #{name} is #{get_file_extention(file_name: name)}"
}