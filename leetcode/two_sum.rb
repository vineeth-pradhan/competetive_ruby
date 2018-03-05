##
# https://leetcode.com/problems/two-sum
#
class TwoSum
  def two_sum(nums, target)
    result, store = [[], {}]
    nums.each_with_index do |item, i|
      rem = target - item
      if(store.key?(rem))
        result.push(i)
        result.push(store[rem])
      end
      store[item] = i
    end
    result
  end
end
# nums = [3,2,4]
# target = 6
# print TwoSum.new.two_sum(nums, target)
