# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  merged_intervals = []

  intervals.sort.each do |curr|
    last = merged_intervals.pop
    if last.nil?
      merged_intervals << curr
    elsif last[1] < curr[0] || curr[1] < last[0] # Last and curret are not overlapped
      merged_intervals << last << curr
    else # Last and curret are overlapped
      merged_intervals << [(last + curr).min, (last + curr).max]
    end
  end

  merged_intervals
end


=begin

x-------y
  a---b

x---y
  a---b

  x---y
a---b

  x---y
a-------b

x---y
       a---b

       x---y
a---b

=end

