class Solution
  def add_binary(a, b)
    a.size >= b.size ? (max = a; min = b) : (max = b; min = a)
    i = 0
    result = ""
    carry = 0
    while(i < max.size)
      sum = (max[max.size - i - 1].to_i + (min.size-i-1 >= 0 ? min[min.size - i - 1].to_i : 0) + carry) % 2
      carry = (max[max.size - i - 1].to_i + (min.size-i-1 >= 0 ? min[min.size - i - 1].to_i : 0) + carry) / 2
      result.prepend(sum.to_s)
      i += 1
    end
    result.prepend(carry.to_s) if carry != 0
    result
  end
end
