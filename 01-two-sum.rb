# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  answer = ""
  catch(:break_loop){
    nums.each_with_index{|v1, i1|
      nums.slice(i1+1..-1).each_with_index{|v2, i2|
        if v1 + v2 == target
          answer = [i1, i2+i1+1]
          throw :break_loop
        end
      }
    }
  }
  answer
end

if __FILE__ == $0
  nums = [2, 7, 11, 15]
  target = 18
  p two_sum(nums, target)
end
