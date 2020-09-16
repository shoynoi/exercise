# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  nums.tap { |numbers| numbers.delete(val) }.length
end
