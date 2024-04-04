# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
#
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  len, current_len, ind1 = [ 0, 0, 0 ]
  registry = {}
  return 0 if s.empty?
  (0..(s.length - 1)).each do |c|
    key = s[c]
    if(registry.key?(key) && ind1 <= registry[key])
      ind1 = registry[key] + 1
      current_len = c - ind1 + 1
    else
      current_len = current_len.next
    end
    registry[key] = c
    len = current_len if current_len > len
  end
  p len
end

length_of_longest_substring("tmmzuxt")
length_of_longest_substring("pwwkew")
length_of_longest_substring("dvdf")
