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

  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      prev_head = @head
      new_node.next_node = @head
      @head = new_node
    end
  end

  def pop
    return "sorry boss, nothing to pop" if @head == nil
    current_node = @head
    if current_node.next_node == nil
      @head = nil
    else
      current_node = @head
      while !current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = nil
    end
  end

  def find(index, num_nodes)
    return "sorry boss, nothing here" if @head == nil
    count = 1
    current_node = @head
    find_result = []
      until count == index
        count += 1
        current_node = current_node.next_node
      end
      (num_nodes).times do #how to make this not break with too many nodes?
        find_result << current_node.data
        current_node = current_node.next_node
      end
    find_result.join(" ")
  end

  def includes?(data)
    return "*cricket noises*" if @head == nil
    node = @head
    while(!node.nil?)
      if(node.data == data)
        return true
      end
      node = node.next_node
    end
    "#{data}? never heard of em."
  end

  def to_string
    return "string? you don't even have a thread" if @head == nil
    string = []
    current_node = @head
      while !current_node.nil? #why can't I use !current_node.data.nil?
        string << current_node.data
        current_node = current_node.next_node
      end
      string.join(" ")
  end

  # def remove(data)
  #   return "list is already empty, boss" if @head == nil
  #   node = @head
  #   prev_node = nil
  #   until(node.nil?)
  #     if(node.data == data)
  #       if !prev_node.nil?
  #         prev_node.next_node = node.next_node
  #       else
  #         @head = nil
  #     end
  #     prev_node = node
  #     node = node.new_node
  #   end
  #   "sorry kid, nothing to remove"
  # end

end


require "./lib/node.rb"
list = LinkedList.new
list.append("deep")
list.append("woo")
list.append("shi")
list.append("shu")
list.append("blop")
require 'pry'; binding.pry


