# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  types = {}
  count = 0
  j.each_byte do |c|
    types[c] = ""
  end
  s.each_byte do |c|
    count = count.next if types.key?(c)
  end
  count
end

num_jewels_in_stones('aA', "aAAbbbb")
