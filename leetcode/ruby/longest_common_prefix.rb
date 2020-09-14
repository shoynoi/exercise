# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?
  prefix = ""
  str = strs.pop
  str.size.times do |i|
    break unless strs.all? { |s| s[i] == str[i] }
    prefix << str[i]
  end
  prefix
end
