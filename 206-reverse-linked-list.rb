# Definition for singly-linked list.

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {ListNode}
# reverse_list()はListNodeインスタンスであるheadをとり、リストノードインスタンスを返す 

def reverse_list(head)
  #head.split('->').reverse.slice(1, head.size).push('NULL').join('->') 
end

if __FILE__ == $0
  head = "1->2->3->4->5->NULL"
  p reverse_list(head)

  ln1 = ListNode.new(1)
  ln2 = ListNode.new(2)
  p ln1, ln2


end

=begin
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

is the YARD documentation of the add_two_numbers method. It means that the method takes two parameters (l1 and l2, both are ListNode instances) and returns a new ListNode instance.
=end
