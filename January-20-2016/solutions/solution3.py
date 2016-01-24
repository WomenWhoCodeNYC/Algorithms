"""Algorithm@Betterment: Jan 20,2016

Problem 3: find the 2nd largest element in BST:

Write a function to find the 2nd largest element in a binary search tree:

*A binary search tree is a binary tree in which, for each node:

-The node's value is greater than all values in the left subtree.
-The node's value is less than all values in the right subtree. BSTs are useful for 
quick lookups. If the tree is balanced, we can search for a given value in the tree 
in O(lgn) time.*
"""

class Node:
	def __init__(self, val, left=None, right=None):
		self.val = val
		self.left = left
		self.right = right
	def __str__(self):
		return str(self.val)
		
class tree:
	def __init__(self):
		self.root = None
				
	def add(self, val):
		if self.root:
			self._add(self.root, val)
		else:
			self.root = Node(val)
			
	def _add(self, node, val):
		if val < node.val:
			if node.left:
				self._add(node.left, val)
			else:
				node.left = Node(val)
		else:
			if node.right:
				self._add(node.right, val)
			else:
				node.right = Node(val)
			
	def printTree(self):
		if self.root:
			self._printTree(self.root)
			
	def _printTree(self, node):
		if node:
			self._printTree(node.left)
			print(node)
			self._printTree(node.right)
	
	def find_2nd_largest(self):
		if self.root:
			return self._find2nd(self.root)
			
	def _find2nd(self, node):
		last = None
		if node.right:
			while node.right:
				last = node
				node = node.right
			if node.left:
				last = self._find1st(node.left)
		elif node.left:
			last = self._find1st(node.left)
		return last
		
	def _find1st(self, node):
		last = node
		while last.right:
			last = last.right
		return last
	
def test(data):
	t = tree()
	for i in data:
		t.add(i)
		
	print("input data: %s, n = %s" % (data,len(data)))
	print("Print the Tree:")
	t.printTree()
	print("get the second largest: ")
	print(t.find_2nd_largest())
	
if __name__ == "__main__":
	d1 = [1, 7, 9, 2, 8]
	d2 = [6, 8, 5, 2, 7, 0 , 1, 9]
	d3 = [16, 13, 11]
	d4 = [9]
	d5 = [10, 16, 7, 2, 9, 6, 11, 15, 0]
	tData = [d1, d2, d3, d4, d5]
	
	for d in tData:
		test(d)
		print()
	
		