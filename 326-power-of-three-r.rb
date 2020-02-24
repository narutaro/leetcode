# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n, power_value = 1)
    #puts "n=#{n} power_value=#{power_value}"
    return true if n == power_value
    return false if n < power_value
    is_power_of_three(n, power_value * 3)
end

p is_power_of_three(28)

