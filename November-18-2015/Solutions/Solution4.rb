
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

end



class SingleLinkedList

  attr_accessor :head

  def initialize(val)
    @head = Node.new(val)
  end

  def add_value(value)
    if (@head.nil?)
      head = Node.new(value)
    else
      current_node = @head
      while current_node.next
        current_node = current_node.next
      end
      current_node.next = Node.new(value)
    end
  end

  def find_node(list,n)
    len = 0
    tmp = list.head
    while (tmp != nil) do
      tmp = tmp.next
      len += 1
    end
    if (len < n)

      return "the length of linked list less then #{n}"

    end
    tmp = list.head
    (1...len-n+1).each do |i|
      tmp = tmp.next
    end
    return tmp.value
  end

end


list = SingleLinkedList.new(3)
list.add_value(8)
list.add_value(9)
list.add_value(4)
list.add_value(6)

p list.find_node(list, 1) == 6
p list.find_node(list, 3) == 9
p list.find_node(list, 6) == "the length of linked list less then 6"
