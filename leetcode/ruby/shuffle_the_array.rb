# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  a,b = nums[0...n], nums[n..-1]
  a.zip(b).flatten!
end
