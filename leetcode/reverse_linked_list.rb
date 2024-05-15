# https://leetcode.com/problems/reverse-linked-list/
#
class Node
  attr_accessor :data, :nextt

  def initialize(data=nil,nextt=nil)
    self.data = data
    self.nextt = nextt
  end
end

class Solution
  attr_accessor :head

  def initialize(array)
    self.head = Node.new
    self.head.nextt = Node.new
    create_nodes(0,array,self.head.nextt) unless array.empty?
  end

  def print_all(node)
    if node && node.data
      print node.data
      print '->' if node.nextt
      print_all(node.nextt) if node.nextt
    end
  end

  def reverse
    helper(self.head.nextt, self.head.nextt.nextt, self.head)
  end

  private

  def helper(current, _next, head)
    if(_next.nextt)
      temp = _next.nextt
      _next.nextt = current
      current.nextt = nil if head.nextt == current
      helper(_next, temp, head)
    else
      _next.nextt = current
      self.head = _next
    end
  end

  def create_nodes idx, array, node
    if idx < array.size
      node.data = array[idx]
      node.nextt = Node.new
      create_nodes idx+1, array, node.nextt
    end
  end
end
