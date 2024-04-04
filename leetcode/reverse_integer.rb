##
# https://leetcode.com/problems/reverse-integer
#
class ReverseInteger
  def reverse(x)
    unless x.positive?
      x *= -1
      return reverse_num(x) * -1
    else
      return reverse_num(x)
    end
  end

  def reverse_num(x)
    reversed_x = 0
    while(x > 0)
      unit_place = x % 10
      reversed_x = reversed_x * 10 + unit_place
      x /= 10
    end
    reversed_x
  end
end

# ReverseInteger.new.reverse(19) # => 91
