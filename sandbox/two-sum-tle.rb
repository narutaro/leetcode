# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  answer = ""
  catch(:break_loop){
    nums.each_with_index{|v1, i1|
      nums.each_with_index{|v2, i2|
        if i1 == i2
          next
        else
          if v1 + v2 == target
            answer = [i1, i2]
            throw :break_loop
          end
        end
      }
    }
  }
  answer
end

if __FILE__ == $0
  nums = [2, 7, 11, 15]
  target = 9
  p two_sum(nums, target)
end
