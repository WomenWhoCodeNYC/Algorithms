# Submitted by bevdsouza


class Node(object):
    def __init__(self, data):
        self.data = data
        self.next = None


class LinkedList(object):
    head = None

    def add_node(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
        else:
            curr = self.head
            while curr.next:
                curr = curr.next
            curr.next = new_node


def partition_list(linked_list, x):
    node = linked_list.head

    before_val = None
    after_val = None
    x_node = None

    while node:
        new_node = node.next
        if node.data < x:
            node.next = before_val
            before_val = node
        elif node.data > x:
            node.next = after_val
            after_val = node
        else:
            x_node = node
        node = new_node

    if x_node:
        x_node.next = after_val
        after_val = x_node

    if not before_val:
        return after_val

    head = before_val
    while before_val.next:
        before_val = before_val.next

    before_val.next = after_val
    return head


def print_list(li):
    while li:
        print li.data
        li = li.next

if __name__ == '__main__':
    l = LinkedList()
    l.add_node(4)
    l.add_node(5)
    l.add_node(12)
    l.add_node(42)
    l.add_node(6)
    l.add_node(23)
    l.add_node(11)
    l.add_node(24)
    new_head = partition_list(l, 12)
    print_list(new_head)
