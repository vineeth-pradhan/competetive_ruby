# https://leetcode.com/problems/add-two-numbers/
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def calculate_sum(l1_val, l2_val)
  sum = l1_val + l2_val + @carry
  new_digit = ListNode.new(sum % 10)
  @carry = sum / 10
  new_digit.next = @result
  @result = new_digit
end

def add_two_numbers(l1, l2)
  @result = ListNode.new(nil)
  @carry = 0
  while(l1 || l2)
    calculate_sum(l1 ? l1.val : 0, l2 ? l2.val : 0)
    l1 = l1.next if l1
    l2 = l2.next if l2
  end

  if(@carry.positive?)
    new_digit = ListNode.new(@carry)
    new_digit.next = @result
    @result = new_digit
  end

  print_result = []
  while(@result)
    print_result.unshift(@result.val) if @result.val
    @result = @result.next
  end
  print print_result
end

l13 = ListNode.new(3)
l12 = ListNode.new(4)
l11 = ListNode.new(2)
l11.next = l12
l12.next = l13
l23 = ListNode.new(4)
l22 = ListNode.new(6)
l21 = ListNode.new(5)
l22.next = l23
l21.next = l22

add_two_numbers(l11, l21)
