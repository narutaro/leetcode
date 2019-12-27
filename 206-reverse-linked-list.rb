# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  head.split('->').reverse.slice(1, head.size).push('NULL').join('->') 
end

if __FILE__ == $0
  head = "1->2->3->4->5->NULL"
  p reverse_list(head)
end
