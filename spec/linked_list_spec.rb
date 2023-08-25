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
    require 'pry'; binding.pry
  expect("doop").to eq(@data)
  end
end