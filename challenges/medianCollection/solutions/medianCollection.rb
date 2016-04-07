# Upon instantiation, the class starts out with an empty array to store the collection of numbers

class MedianCollection
	def initialize()
		@the_nums = []
		@size = 0
	end

	def add(num)
		@the_nums << num
		@size += 1
	end

	def median
		@the_nums[(@size - 1)/2]
	end

end

# m = MedianCollection.new

# m.add(4)
# m.add(17)
# m.add(19)
# m.add(1)
# m.add(12)
# puts m.median