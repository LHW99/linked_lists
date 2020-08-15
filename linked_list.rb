class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    # adds a new object to the end of the stack
    if @head
    # if there is already a head then make this the last in the stack
    # go next until you hit nil, then make this value that nil
      until @head.next_node == nil
        @head = Node.next_node
      end
      @head.next_node = Node.new(value)
    else
    # if there is no head, make it the head
    @head = Node.new(value)
    end
    puts Node:value
  end

  def prepend(value)
    # adds a new object to the beginning of the stack
    # the head becomes the new value
    # each subsequent node that exists is pushed down one position
    if @head

    else
      @head = Node.new(value)
  end

  def size
    # returns how many nodes are in the linked list
    puts "There are #{Node::count} nodes in the linked list"
  end

  def head
    # returns the value of the head of the linked list
    puts "The value of the head is #{@head}"
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
    puts @head
    until @head.next_node == nil
      puts Node:value
    end
  end
end

class Node
  attr_accessor :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

stupid = LinkedList.new
stupid.append(10)
stupid.to_s
