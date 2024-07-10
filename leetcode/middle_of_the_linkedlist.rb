# Definition for singly-linked list.
#
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def outp
    curr = self
    while(curr != nil)
      print curr.val.to_s
      curr.next != nil ? print(" > ") : print("\n")
      curr = curr.next
    end
    puts
  end
end

# @param {ListNode} head
# @return {ListNode}
#
def middle_node(head)
  first = head.next
  second = head
  while first != nil && first.next != nil
    first = first.next.next
    second = second.next
  end
  second
end

list1 = ListNode.new(0)
list2 = ListNode.new(1, list1)
list3 = ListNode.new(2, list2)
list4 = ListNode.new(3, list3)
list5 = ListNode.new(4, list4)
list6 = ListNode.new(5, list5)
list7 = ListNode.new(6, list6)
list8 = ListNode.new(7, list7)
list8.outp
print(middle_node(list8).val)
