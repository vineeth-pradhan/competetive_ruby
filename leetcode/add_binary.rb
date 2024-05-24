class Solution
  def add_binary(a, b)
    a.size >= b.size ? (max = a; min = b) : (max = b; min = a)
    i = 0
    result = ""
    carry = 0
    while(i < max.size)
      if min.size - i - 1 >= 0
        sum = (max[max.size - i - 1].to_i + min[min.size - i - 1].to_i + carry) % 2
        carry = (max[max.size - i - 1].to_i + min[min.size - i - 1].to_i + carry) / 2
      else
        sum = (max[max.size - i - 1].to_i + carry) % 2
        carry = (max[max.size - i - 1].to_i + carry) / 2
      end
      result.prepend(sum.to_s)
      i += 1
    end
    if carry != 0
      result.prepend(carry.to_s)
    end
    result
  end
end
