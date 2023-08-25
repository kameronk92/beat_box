class Node
  attr_reader :sound, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def data
    @data
  end

  def next_node
    @next_node
  end
end