# https://leetcode.com/problems/reverse-integer/description/
#
# @param {Integer} x
# @return {Integer}
def reverse(x)
  arr = []
  sign = x.positive? ? 1 : -1
  return x * sign if x/10 == 0
  return 0 if(x > ((2 ** 31) - 1) || x <= -((2 ** 31/2)))
  rev(x*sign, arr) * sign
end

def rev(x,arr)
  arr << x % 10 unless (x/10).positive?
  if (y=x/10).positive?
    arr << x % 10
    rev(y,arr)
  end
  arr.join.to_i
end

p reverse(1534236469)
