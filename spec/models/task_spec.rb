require 'rails_helper'

RSpec.describe Task, type: :model do
  it "validates presence of title" do 
    task = Task.new
    expect(task.title).to be_nil
    expect(task).not_to be_valid

    task.title = 'Eat'
    expect(task).to be_valid 
  end   
end
