# Implement the Linked List cz Ruby does not have 
# a built-in Implementation
class Node
	attr_accessor :next, :value
	
	def initialize(value: raise)
		@value = value
	end

	# O(a+b)
	# a = number of values in hte 1st list
	# b = number of values in the 2nd list
	def self.compare_two_lists(list_1: raise, list_2: raise)
		list_1_str = list_1.values_to_string
		list_2_str = list_2.values_to_string
		puts "list_1: #{list_1_str}"
		puts "list_2: #{list_2_str}"
		if list_1_str == list_2_str
			return 0
		elsif list_1_str > list_2_str
			return 1
		elsif list_1_str < list_2_str
			return -1
		end
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

	def values_to_string
		current_node = self
		result = ''
		while current_node
			result = "#{result}#{current_node.value}"
			current_node = current_node.next
		end
		result
	end
end


###EXAMPLES========================================================

## SHOULD OUTPUT 0

# first list
linked_list = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k')
linked_list.add_node(node: node2); linked_list.add_node(node: node3); linked_list.add_node(node: node4)

# second list
linked_list2 = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k')
linked_list2.add_node(node: node2); linked_list2.add_node(node: node3); linked_list2.add_node(node: node4)

puts Node.compare_two_lists(list_1: linked_list, list_2: linked_list2)



## SHOULD OUTPUT 1
# first list
linked_list = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k'); node5 = Node.new(value: 'a')
linked_list.add_node(node: node2); linked_list.add_node(node: node3); linked_list.add_node(node: node4); linked_list.add_node(node: node5)

# second list
linked_list2 = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k')
linked_list2.add_node(node: node2); linked_list2.add_node(node: node3); linked_list2.add_node(node: node4)

puts Node.compare_two_lists(list_1: linked_list, list_2: linked_list2)



## SHOULD OUTPUT -1
# fist list
linked_list = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k'); node5 = Node.new(value: 'a')
linked_list.add_node(node: node2); linked_list.add_node(node: node3); linked_list.add_node(node: node4); linked_list.add_node(node: node5)

# second list
linked_list2 = Node.new(value: 'g')
node2 = Node.new(value: 'e'); node3 = Node.new(value: 'e'); node4 = Node.new(value: 'k'); node5 = Node.new(value: 'b'); 
linked_list2.add_node(node: node2); linked_list2.add_node(node: node3); linked_list2.add_node(node: node4); linked_list2.add_node(node: node5)

puts Node.compare_two_lists(list_1: linked_list, list_2: linked_list2)


