=begin
#<TreeNode:0x0000000001ca6858 @val=3, 
  @left=#<TreeNode:0x0000000001ca6740 @val=9,
    @left=nil,
    @right=nil>,
  @right=#<TreeNode:0x0000000001ca66c8 @val=20,
    @left=#<TreeNode:0x0000000001ca6678 @val=15,
      @left=nil,
      @right=nil>,
    @right=#<TreeNode:0x0000000001ca6600 @val=7,
      @left=nil,
      @right=nil
>>>
=end

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

tn1 =TreeNode.new(3)
tn2 =TreeNode.new(9)
tn3 =TreeNode.new(20)
tn4=TreeNode.new(nil)
tn5=TreeNode.new(nil)
tn6=TreeNode.new(15)
tn7=TreeNode.new(7)

tn1.left = tn2
tn1.right = tn3
tn2.left = tn4
tn2.right = tn5
tn3.left = tn6
tn3.right = tn7

p tn1.left # nil
p tn1.right.right # 7
p tn1.right.left # 15
p tn1.right.left.left # nil

def is_edge?(node)
  if (node.left.nil? and node.right.nil?) 
    true
  elsif (node.left.val.nil? and node.right.val.nil?)
    true
  else
    false
  end
end

puts "#{tn1} #{tn1.val} #{is_edge?(tn1)}"
puts "#{tn2} #{tn2.val} #{is_edge?(tn1.left)}"
puts "#{tn3} #{tn3.val} #{is_edge?(tn1.right)}"
puts "#{tn7} #{tn7.val} #{is_edge?(tn1.right.right)}"

# @param {TreeNode} root
# @return {Integer}
  left_depth = 1
  right_depth = 1
def max_depth(root)
  if is_edge?(root)
    max(left_depth, right_depth)
  else
    left_depth = 1 + max_depth(root.left) 
    right_depth = 1 + max_depth(root.right) 
  end
end

p max_depth(tn1)
