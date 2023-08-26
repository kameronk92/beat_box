class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    return 0 if @head == nil
    count = 1
    current_node = @head
      while !current_node.next_node.nil?
        count += 1
        current_node = current_node.next_node
      end
      count
  end

  def to_string
    return "add some nodes first, my dude" if @head == nil
    current_node = @head
    string = current_node.data
    while !current_node.next_node.nil?
      current_node = current_node.next_node
      string = string + " " + current_node.data
    end
    return string
  end
end




