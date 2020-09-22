# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  nums.map.with_index do |num, i|
    next num if i.zero?
    nums[i] = num > (num + nums[i - 1]) ? num : (num + nums[i - 1])
  end.max
end
