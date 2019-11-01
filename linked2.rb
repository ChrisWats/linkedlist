class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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

def reverse_list(list, previous=nil)
  # do stuff
  current_head = list.next_node
  list.next_node = previous
  if current_head
    reverse_list(current_head, list)
  else
    return list
  end
end

def has_loop(list)
  # Go through the list while comparing values.
  hare = list
  tort = list
  while (hare.next_node != nil)  
    hare = hare.next_node  
    
    if hare.next_node.nil?
      return false
    end

    hare = hare.next_node
    tort = tort.next_node

    if hare == tort
        return true   
    end
  end
  return false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# In this assignment, implement the reverse_list method. For this code to work.
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

puts "There is a loop: #{has_loop(node1)}"
node3.next_node = node1
puts "-------"
puts "There is a loop: #{has_loop(node1)}"