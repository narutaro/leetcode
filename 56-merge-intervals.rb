# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  merged_intervals = []

  intervals.sort.each do |curr|
    last = merged_intervals.pop
    if last.nil?
      merged_intervals << curr
    elsif last[1] < curr[0] || curr[1] < last[0] # Last and curret are not overlapped
      merged_intervals << last
      merged_intervals << curr
    else # Last and curret are overlapped
      merged_intervals << [(last + curr).min, (last + curr).max]
    end
  end

  merged_intervals
end

if __FILE__ == $0
  #intervals = [[1,3],[2,6],[8,10],[15,18]]
  intervals = [[1,3],[4,6],[8,10],[15,18]]
  p intervals
  p merge(intervals)
  puts "----"
  intervals = [[1,3],[2,6],[5,10],[15,18]]
  p intervals
  p merge(intervals)
  puts "----"
  intervals = [[1,5],[2,4],[5,10],[15,18]]
  p intervals
  p merge(intervals)
  puts "----"
  intervals = [[1,5],[2,4],[5,10],[15,18],[3,5]]
  p intervals
  p merge(intervals)
  #p mg([1,3], [2,6])
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

