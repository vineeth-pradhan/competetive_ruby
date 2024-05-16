# https://leetcode.com/problems/reverse-linked-list/
#
class Node
  attr_accessor :data, :next

  def initialize(data=nil,_next=nil)
    self.data = data
    self.next = _next
  end
end

class Solution
  attr_accessor :head

  def initialize(array)
    self.head = Node.new
    create_nodes(0,array,self.head) unless array.empty?
  end

  def print_list
    node = self.head
    helper(node)
  end

  def reverse
    traverse_helper(self.head, self.head.next, self.head)
  end

  private

  def helper(node)
    if node
      print node.data
      if node.next
        print '->'
        helper(node.next)
      end
    end
  end

  def traverse_helper(current, _next, head)
    current.next = nil if head == current
    if(_next.next)
      temp = _next.next
      _next.next = current
      traverse_helper(_next, temp, head)
    else
      _next.next = current
      self.head = _next
    end
  end

  def create_nodes(idx, array, node)
    if idx < array.size
      node.data = array[idx]
      if idx+1 < array.size
        node.next = Node.new
        create_nodes(idx+1, array, node.next)
      end
    end
  end
end
