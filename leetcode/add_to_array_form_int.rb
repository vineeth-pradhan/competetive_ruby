# https://leetcode.com/problems/add-to-array-form-of-integer
class Solution
  def add_to_array_form(num, k)
    i=num.size
    result = []
    helper(k, num, i, result, 0)
    result
  end

  private

  def helper(k, num, i, result, carry)
    if k > 0 || i > 0 || carry > 0
      result.unshift((k % 10 + (i-1 >= 0 ? num[i-1] : 0) + carry) % 10)
      carry = (k % 10 + (i-1 >= 0 ? num[i-1] : 0) + carry) / 10
      helper(k/10, num, i-1, result, carry)
    end
  end
end
