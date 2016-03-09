#submitted by [seemaullal](https://github.com/seemaullal)


require 'minitest/autorun'
require 'minitest/spec'

class Node
  attr_accessor :children, :value
  def initialize(children, val)
    @children = children || []
    @value = val
  end

  def is_leaf?
    @children.empty?
  end

  def to_s
    @value
  end
end

# iterative solution
def get_nth_leaf(root, n)
  num_leaves = 0
  stack = [root]
  while !stack.empty?
    cur = stack.pop

    # is there a faster better way to do this array concat?
    i = cur.children.size - 1
    while i >= 0
      stack.push cur.children[i]
      i -= 1
    end

    if cur.is_leaf?
      num_leaves += 1
      return cur.value if (num_leaves-1) == n
    end
  end
  nil
end

describe 'get_nth_leaf' do
  let(:j) { Node.new([], 'J') }
  let(:k) { Node.new([], 'K') }

  let(:g) { Node.new([j,k], 'G') }
  let(:h) { Node.new([], 'H') }

  let(:d) { Node.new([], 'D') }
  let(:e) { Node.new([], 'E') }
  let(:f) { Node.new([], 'F') }

  let(:b) { Node.new([d,e,f], 'B') }
  let(:c) { Node.new([g,h], 'C') }

  let(:a) { Node.new([b,c], 'A') }

  let(:tree) { a }

  it 'gets the -1 leaf' do
    assert_equal nil, get_nth_leaf(tree, -1)
  end

  it 'gets the 0 leaf' do
    assert_equal 'D', get_nth_leaf(tree, 0)
  end

  it 'gets the 1 leaf' do
    assert_equal 'E', get_nth_leaf(tree, 1)
  end

  it 'gets the 2 leaf' do
    assert_equal 'F', get_nth_leaf(tree, 2)
  end

  it 'gets the 3 leaf' do
    assert_equal 'J', get_nth_leaf(tree, 3)
  end

  it 'gets the 4 leaf' do
    assert_equal 'K', get_nth_leaf(tree, 4)
  end

  it 'gets the 5 leaf' do
    assert_equal 'H', get_nth_leaf(tree, 5)
  end

  it 'gets the 6 leaf' do
    assert_equal nil, get_nth_leaf(tree, 6)
  end
end
