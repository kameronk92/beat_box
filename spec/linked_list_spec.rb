require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it 'is a class' do
  list = LinkedList.new
  expect(list).to be_instance_of(LinkedList)
end
end