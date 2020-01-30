class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

class LinkedList
  attr_reader :head

  def initialize(val)
    @head = Node.new(val)
  end

  def add_tail(val)
    node = search_tail(@head)
    node.next = Node.new(val)
  end

private
  # 引数としてNodeを渡してそのNodeの次にNodeを連結させる
  # Nodeを追加することだけが責務
  def append_list(obj, val)
    obj.next = Node.new(val)
  end

  def search_tail(node)
    return node if !node.next
    search_tail(node.next)
  end
end

l = LinkedList.new(1)
l.add_tail(2)
l.add_tail(3)

p l
