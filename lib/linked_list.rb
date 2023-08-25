class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    elsif 
      @head.node.next_node == nil
      false
    end
  end
end

  # def count
  # end

  # def to_string
  # end
