require 'rspec'
require 'task'

describe 'Task' do
  it 'initializes with a name' do
    task = Task.new 'learn SQrrrLLLLL'
    expect(task).to be_an_instance_of Task
  end

  it 'returns its name' do
    task = Task.new 'stuff and things'
    expect(task.name).to eq 'stuff and things'
  end

  it 'starts with no tasks' do
    expect(Task.all).to eq []
    end
end
