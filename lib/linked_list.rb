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
      # node = @head.next_node
      # until node.next_node == nil
      # false
      current_node = @head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end
end

  # def count
  # end

  # def to_string
  # end
