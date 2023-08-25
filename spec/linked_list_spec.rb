require "./lib/linked_list"
require "./lib/node"
require 'pry'

RSpec.describe LinkedList do
  it 'is a class' do
    list = LinkedList.new
    expect(list).to be_instance_of(LinkedList)
  end

  it 'references a head attribute' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it 'uses the append method to store a string in the data instance variable' do
    list = LinkedList.new
    list.append("doop")
    
  expect("doop").to eq(@data)
  end

  it 'stores the data in the head'do
    list = LinkedList.new
    list.append("doop")
  expect(list.head.data).to eq("doop")
  end

  it 'points to nil without another node' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it 'can count the number of nodes in the list' do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'can output the list to a string' do
   list = LinkedList.new
   list.append("doop")
   expect(list.to_string).to eq ("doop")
end
end