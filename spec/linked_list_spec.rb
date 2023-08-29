require "./lib/linked_list"
require "./lib/node"

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

  describe '#append' do
    it 'without a head, creates a new head Node' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head).to be_instance_of(Node)
      expect(list.head.data).to eq("doop")
    end
    
    it 'without another node, head points to nil' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.next_node).to eq(nil)
    end

    it 'can append node to list that is not empty' do
      list = LinkedList.new
      list.append("doop")
      node_2 = list.append("deep")
      expect(list.head.next_node).to eq(node_2)
    end

    it 'rejects beats that are not phat' do
      list = LinkedList.new
      list.append("mississippi")
      expect(list.append("mississippi")).to eq('try again') # I think there's a better way to write this
    end
  end

  describe '#count' do
    it 'counts the number of nodes' do
      list = LinkedList.new
      expect(list.count).to eq(0)
      list.append("doop")
      expect(list.count).to eq(1)
      list.append("deep")
      expect(list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'can output the list to a string' do
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq ("doop")
      list.append("deep")
      expect(list.to_string).to eq("doop deep")
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

  describe '#insert' do
    it 'places a new Node at specified index' do
      list = LinkedList.new
      node_1 = list.append("dop")
      node_2 = list.append("plop")
      node_3 = list.append("suu")
      node_3 = list.insert(1, "woo")
      expect(list.to_string).to eq("dop woo plop suu") #is there a better way of isolating this test?
    end
  end

  describe '#find' do
    it 'uses index position and number of nodes to return a string' do
      list = LinkedList.new
      node_1 = list.append("deep")
      node_2 = list.append("woo")
      node_3 = list.append("shi")
      node_4 = list.append("shu")
      node_5 = list.append("blop")
      expect(list.find(2,1)).to eq("shi")
      expect(list.find(1,3)).to eq("woo shi shu")
    end

    it 'rejects queries that are too long' do
    list = LinkedList.new
      node_1 = list.append("deep")
      node_2 = list.append("woo")
      node_3 = list.append("shi")
      node_4 = list.append("shu")
      node_5 = list.append("blop")
      expect(list.find(1,100)).to eq("try again")
    end
  end

  describe 'includes?' do
    it 'looks for argument in list and returns boolean' do
      list = LinkedList.new
      node_1 = list.append("deep")
      node_2 = list.append("woo")
      node_3 = list.append("shi")
      node_4 = list.append("shu")
      node_5 = list.append("blop")
      expect(list.includes?("deep")).to eq(true)
      expect(list.includes?("dep")). to eq("dep? never heard of em.")
    end
  end

  describe '#pop' do
    it 'without nodes, returns error message'do
      list = LinkedList.new
      expect(list.pop).to eq ("sorry boss, nothing to pop")
    end

    it 'with one node, removes head node' do
      list = LinkedList.new
      node_1 = list.prepend("doop")
      list.pop
      expect(list.head).to eq(nil)
    end

    it 'with multiple nodes, removes last node' do
      list = LinkedList.new
      node_1 = list.prepend("doop")
      node_2 = list.prepend("skrrrp")
      list.pop
      expect(list.count).to eq(1)
    end
  end
end