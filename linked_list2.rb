class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# def reverse_list(list)
#     # initialize a new stack
#     stack = Stack.new

#     while list
#         # push the first position of a node to a stack
#         stack.push(list.value)
#         # Move to the next node
#         list = list.next_node
#     end

#     return stack.data
# end

def reverse_list(list, previous=nil)
  # Sets head of the linked list
  current = list.next_node
  # Changes the next node of the linked list to point to nil
  list.next_node = previous

  if current
    # Recursive method to complete the rest of the linked list
    reverse_list(current, list)
  else
    list
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(23, node3)

print_values(node4)

puts "-------"

revlist = reverse_list(node4)

print_values(revlist)