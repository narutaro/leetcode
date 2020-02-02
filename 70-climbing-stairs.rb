# @param {Integer} n
# @return {Integer}

def factorial(m)
  (1..m).inject(1,:*)
end

def prem(ary)
  h = ary.group_by(&:itself)
  h[1] = [1] if !h.has_key?(1)
  h[2] = [2] if !h.has_key?(2)
  factorial(ary.size)/(factorial(h[1].size)*factorial(h[2].size))
end

def climb_stairs(n)
  distinct_ways = 0

  x = 0 
  while x <= n
    y = 0 
    while y <= n
      if x + 2*y ==n
        ary = []
        x.times{|x| ary << 1} 
        y.times{|y| ary << 2}
        distinct_ways =  distinct_ways + prem(ary)
      end
      y = y + 1
    end
    x = x + 1
  end
  distinct_ways
end

#p climb_stairs(10)




