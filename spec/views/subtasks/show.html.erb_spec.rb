require 'rails_helper'

RSpec.describe "tasks/show", :type => :view do
  before(:each) do
    @list = List.create!(:description => "Description")
    @task = assign(:task, Task.create!(
      :description => "Description",
      :list => @list
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
