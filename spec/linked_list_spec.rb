require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe LinkedList do
  describe '#initialize' do
    it 'creates a LinkedList' do
      list = LinkedList.new
      expect(list).to be_instance_of(LinkedList)
    end

    it 'head is nil by default' do
      list = LinkedList.new
      expect(list.head).to eq(nil)
    end
  end

  describe '#apend' do
    it 'without a head, creates a new head Node' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.data).to eq("doop")
    end

    it 'can append node to list that is not empty' do
      list = LinkedList.new
      list.append("doop")
      node_2 = list.append("deep")
      expect(list.head.next_node).to eq(node_2)
    end

    it 'without another node, head points to nil' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.next_node).to eq(nil)
    end
  end

  describe '#count' do
    it 'counts the number of nodes' do
      list = LinkedList.new
      expect(list.count).to eq(0)
      list.append("doop")
      expect(list.count).to eq(1)
      list.append("skrrrp")
      expect(list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'can output the list to a string' do
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq ("doop")
      list.append("skrrrp")
      expect(list.to_string).to eq("doop skrrrp")
    end
  end

  describe '#prepend' do
    it 'becomes the head'do
      list = LinkedList.new
      node_1 = list.prepend("doop")
      expect(list.head).to eq (node_1)
      node_2 = list.prepend("skrrrp")
      expect(list.head).to eq(node_2)
    end
  end
end