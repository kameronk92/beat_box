require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  describe'#initialize' do
    it 'creates an instance of the Beat Box class' do
      bb = BeatBox.new
      expect(bb).to be_instance_of(BeatBox)
    end
    it 'creates an instance of the LinkedList class' do
      bb = BeatBox.new
      expect(bb.list).to be_instance_of(LinkedList)
    end
    it 'creates a LinkedList with head == nil' do
      bb = BeatBox.new
      expect(bb.list.head).to be nil
    end
  end

  describe '#append' do  
    it 'can add a head to the list' do
      bb = BeatBox.new
      bb.append("deep doo ditt")
      expect(bb.list.head.data).to eq('deep')
    end
    
    it 'can add next nodes to list' do
      bb = BeatBox.new
      bb.append("deep doo ditt")
      bb.play
      expect(bb.list.head.next_node.data).to eq('doo')
    end
  end
  
  describe '#count' do
    it 'can access the list count' do
      bb = BeatBox.new
      bb.append("deep doo ditt")
      bb.append("woo hoo shu")
      expect(bb.count).to eq(6)
    end
  end

  describe '#play' do
    it 'can play the beat stored in the LinkedList' do 
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")
      expect(bb).to receive(:`).with('say -r 500 -v Cello deep doo ditt woo hoo shu')
      bb.play
    end
  end

  describe '#remix' do
    it 'accepts attributes for speed and voice' do
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")
      bb.remix(100, 'Organ')
      expect(bb).to receive(:`).with('say -r 10 -v Organ deep doo ditt woo hoo shu')
      bb.remix(10, 'Organ')
    end
  end
end