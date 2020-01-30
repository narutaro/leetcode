# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_lists(ln1, ln2)
  ln3 = ListNode.new(0)
  buf = ln3

  while ln1 && ln2
      if ln1.val <= ln2.val
          ln3.next = ln1
          ln1 = ln1.next
      else
          ln3.next = ln2
          ln2 = ln2.next
      end
      ln3 = ln3.next
  end
  
  ln3.next = ln1 || ln2 
  buf.next
end

if __FILE__ == $0

  def create_list_node(array)
    array_of_list_nodes = array.map{|n|
      ListNode.new(n)
    }

    lns = ListNode.new(0)
    buf = lns
    array_of_list_nodes.each{|ln|
      lns.next = ln
      lns = lns.next

      #p lns
      #p buf

    }
    buf.next 
  end

  ln1 =  create_list_node([1,2,4])
  ln2 =  create_list_node([1,3,4])

  p merge_two_lists(ln1, ln2)

end
