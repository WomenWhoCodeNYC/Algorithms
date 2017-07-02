require 'set'

class Node
	attr_accessor :next, :value
	
	def initialize(value: raise)
		@value = value
	end

	def add_node(node: raise)
		current_node = self
		while current_node
			if current_node.next.nil?
				current_node.next = node
				break
			else
				current_node = current_node.next
			end
		end
	end

	def is_cyclical?
		node_set = Set.new
		set_size = node_set.size
		current_node = self 

		while current_node
			set_size = node_set.size
			node_set << current_node
			current_node = current_node.next

			if set_size == (node_set.size) 
				break "true and length of the tail is #{node_set.size}"
			elsif current_node.nil?
				break false
			end
		end
	end
end


# Not Cyclical example
linked_list = Node.new(value: 1)
node2 = Node.new(value: 2)
node3 = Node.new(value: 3)
linked_list.add_node(node: node2)
linked_list.add_node(node: node3)

puts "Non cyclical example should eval false => is_cyclical?: #{linked_list.is_cyclical?}"



# Cyclical example
linked_list = Node.new(value: 1)
node2 = Node.new(value: 2)
node3 = Node.new(value: 3)
node4 = Node.new(value: 4)
linked_list.add_node(node: node2)
linked_list.add_node(node: node3)
linked_list.add_node(node: node4)
node4.next = node3

puts "Cyclical example should eval true => is_cyclical?: #{linked_list.is_cyclical?}"
