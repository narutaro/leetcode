# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  if n == 1
    true
  elsif n < 3
    false
  else
    while n != 3
      if n % 3 == 0
        n = n / 3
      else
        return false
        exit
      end
    end
    true
  end
end

# quotient and remainder


