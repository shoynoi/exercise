# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.tap { |numbers| numbers.uniq! }.length
end
