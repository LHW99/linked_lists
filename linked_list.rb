class LinkedList

  def initialize
    @head = Node.new(nil, nil)
  end

  def append(value)
    # adds a new object to the end of the stack
    current_node = @head
    if current_node == nil
      current_node = Node.new(value)
    end
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  def prep(value)
    # adds a new object to the beginning of the stack
    @head = Node.new(value, @head)
  end

  def size
    # returns how many nodes are in the linked list
    puts Node::count
  end

  def head
    # returns the value of the head of the linked list
    puts @head
  end

  def at(index)
    # returns the value of the object in the linked list at that index
  end

  def pop
    # deletes the last object in the linked list
  end

  def contains?(value)
    # looks through linked list for object and returns true or false
  end

  def find(value)
    # returns index of value, or nil if not found
  end

  def to_s
    # returns values of the linked list as a string
    # format: ( value ) -> ( value ) -> nil
    current_node = @head
    puts current_node.value
    while (current_node = current_node.next_node)
      puts current_node.value
    end
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

stupid = LinkedList.new
stupid.append(10)
stupid.append(20)
stupid.prep(30)
stupid.to_s
stupid.size
