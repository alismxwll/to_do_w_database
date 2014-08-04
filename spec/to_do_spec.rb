require 'rspec'
require 'task'

DB = PG.connect(:dbname => 'to_do_test')
RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
  end
end

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

  it 'lets you save tasks to a database' do
    task = Task.new 'learning is fun!!'
    task.save
    expect(Task.all).to eq [task]
  end

  it 'is the same task if it has the same name' do
    task1 = Task.new 'learn juggling'
    task2 = Task.new 'learn juggling'
    expect(task1).to eq task2
  end

end
