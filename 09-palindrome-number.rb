# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  flag = true

  x = x.to_s
  lp  = 0
  rp = x.size - 1

  until rp <= lp do
    lchar = x.slice(lp)
    rchar = x.slice(rp)

    #puts "[#{lp}]:#{lchar} - [#{rp}]:#{rchar} - #{flag}"

    if lchar == rchar
      flag = true
    else
      flag = false
      break
    end

    lp += 1
    rp -= 1

  end

  flag   
end

if __FILE__ == $0
  x = 1
  p is_palindrome(x)
end
