# @param {String} s
# @return {Boolean}
PARENTHESES = { "(" => ")", "{" => "}", "[" => "]" }
def is_valid(s)
  return false unless PARENTHESES.keys.include?(s.chr) && s.size > 1
  a = []
  s.chars.each do |chr|
    if PARENTHESES[chr]
      a << chr
    else
      p = a.pop
      return false if PARENTHESES[p] != chr
    end
  end
  a.empty?
end
