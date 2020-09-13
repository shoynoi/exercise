# @param {String} s
# @return {Integer}
ROMAN_TO_NUM = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 }
def roman_to_int(s)
  amount = s.chars.sum { |roman| ROMAN_TO_NUM[roman.to_sym] }
  diff = s.chars.each_cons(2).inject(0) do |result, (a, b)|
    n = ROMAN_TO_NUM[a.to_sym]
    m = ROMAN_TO_NUM[b.to_sym]
    if n < m
      result += n
    end
    result
  end
  amount - (diff * 2)
end
