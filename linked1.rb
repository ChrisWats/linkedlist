class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
    # IMPLEMENT ME!
    @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    # I RETURN A VALUE
    if @data
      value = @data.value
      @data = @data.next_node
      return value
    end
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

def reverse_list(list)
  # Create a Stack
  dishes = Stack.new

  while list
    # Push onto the stack
    dishes.push(list.value)
    list = list.next_node
  end

  # ADD CODE HERE
  return dishes.data
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# In this assignment, implement the reverse_list method. For this code to work.
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

#Use a Stack & Iterative code?
# stack = Stack.new

# stack.push(1)

# stack.push(2)

# puts stack.pop

# puts stack.pop

# puts stack.pop