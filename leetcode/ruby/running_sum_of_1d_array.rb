# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  nums.map.with_index do |_, i|
    nums[0..i].sum
  end
end
