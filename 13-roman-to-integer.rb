# @param {String} s
# @return {Integer}

=begin
I can be placed before V (5) and X (10) to make 4 and 9. 
X can be placed before L (50) and C (100) to make 40 and 90. 
C can be placed before D (500) and M (1000) to make 400 and 900.
=end

def roman_to_int(s)
  roman = s

  s2n = {
    CM: 900,
    CD: 400,
    XC: 90,
    XL: 40,
    IX: 9,
    IV: 4,
    M: 1000,
    D: 500,
    C: 100,
    L: 50,
    X: 10,
    V: 5,
    I: 1,
  }

  points = []  

  until roman.size == 0 do
    s2n.each_key{|k|
      strk = k.to_s
      if /^#{strk}/ === roman
        roman.sub!(strk, "")
        points << s2n[k]
        break
      end
    }
  end

  points.sum
end

if __FILE__ == $0
  s = "MCMXCIV"
  p roman_to_int(s)
end
