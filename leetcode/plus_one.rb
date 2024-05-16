# https://leetcode.com/problems/plus-one/
class Solution
  def plus_one(digits)
    result = []
    idx = digits.size-1
    carry_over = 0
    while(idx >= 0)
      sum = (idx == digits.size - 1) ? (digits[idx] + 1 + carry_over) : (digits[idx] + carry_over)
      carry_over = sum / 10
      result.unshift(sum % 10)
      idx -= 1
    end
    result.unshift(carry_over) if carry_over != 0
    result
  end
end
