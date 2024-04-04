# https://leetcode.com/problems/reverse-integer/description/
#
# @param {Integer} x
# @return {Integer}
def reverse(x)
  @result = []
  multiplier = 1
  unless x.positive?
    multiplier = -1
    x = x * -1
  end

  rev(x)
  p @result.join('').to_i * multiplier
end

def rev(x)
  if(x%10 == x)
    @result.push(x)
    @result
  else
    @result.push(x%10)
    rev(x/10)
  end
end

reverse(1534236469)
