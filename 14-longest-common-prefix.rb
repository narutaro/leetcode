# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  answer = ""
  matched = ""

  first_item = strs.shift
  return "" if first_item == nil

  first_item.each_char.with_index{|c, i|
    matched = matched + c
    all_match_at_i = strs.all?{|w| w.slice(0, i + 1) === matched}
    if all_match_at_i
      answer = matched
    else
      return answer
      break
    end
    #p "c: #{c}, i: #{i}, ans: #{answer}"
  }

  answer
end

if __FILE__ == $0
  s = ["flower","flow","flight"]
  #s = ["flower","flow","floight"]
  #s = ["aca","cba"]
  p longest_common_prefix(s)
end

# 配列っぽい文字列をうまく配列に変換する
# https://qiita.com/_miyachik/items/addf3766f0e0dd20f154
