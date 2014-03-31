require 'spec_helper'
describe Task do
  it{should validate_presence_of :name }

  describe '#done_tasks' do
    it 'should return all of the done tasks' do
      task1 = Task.create({:name => 'pushups', :howto => 'chest to the floor, flat back', :done => false})
      task2 = Task.create({:name => 'eat food', :howto => 'open mouth', :done => true})

      Task.not_done_tasks.length.should eq 1
    end
  end
  describe '#not_done_tasks' do
    it 'should return all of the done tasks' do
      task1 = Task.create({:name => 'pushups', :howto => 'chest to the floor, flat back', :done => false})
      task2 = Task.create({:name => 'eat food', :howto => 'open mouth', :done => true})
      task3 = Task.create({:name => 'eat food', :howto => 'open mouth', :done => false})

      Task.not_done_tasks.length.should eq 2
    end
  end
end
