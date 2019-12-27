# @param {Integer} x
# @return {Integer}
def reverse(x)
  answer = nil

  pom = 0 
  if x >= 0
    pom = 1
  else
    pom = -1
  end

  reversed_str = x.abs.to_s.reverse.sub(/(^0+)/,'')
  answer = reversed_str.to_i * pom

  if answer > 2**31 or answer < -2**31-1
    answer = 0
  else
    answer
  end
end

if __FILE__ == $0
  x = 1534236469
  p reverse(x)
end
