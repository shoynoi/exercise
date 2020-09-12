# @param {Integer} x
# @return {Integer}
def reverse(x)
  result = x.to_s.reverse.to_i
  return 0 unless result.between?(-2 ** 31, 2 ** 31 - 1)
  x.negative? ? -result : result
end
