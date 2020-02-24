# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  merged_intervals = []

  intervals.sort.each do |curr|
    last = merged_intervals.last
    if last.nil?
      merged_intervals << curr
    elsif last[1] < curr[0]  # Last and curret are NOT overlapped
      merged_intervals << curr
    else # Last and curret are overlapped
      last[1] = (last + curr).max
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

