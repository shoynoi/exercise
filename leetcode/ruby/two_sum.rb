def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, i|
    return hash[target - num], i if hash[target - num]
    hash[num] = i
  end
end
