# https://leetcode.com/problems/length-of-last-word/
class Solution
  def length_of_last_word(s)
    s.match(/[\w]+\s*$/).to_s.strip.size
  end
end
