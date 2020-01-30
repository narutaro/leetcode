# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).scan(/1/).size
end

p hamming_weight(0b00000000000000000000000000001011)
p hamming_weight(0b00000000000000000000000010000000)
p hamming_weight(0b11111111111111111111111111111101)
