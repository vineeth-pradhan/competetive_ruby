# https://leetcode.com/problems/valid-perfect-square/
#
def is_perfect_square(num)
  return true if(num**0.5 * num**0.5 == num)
  false
end

p is_perfect_square(25)
