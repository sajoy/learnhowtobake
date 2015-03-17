require 'rails_helper'

describe "the add lessons process" do
  it "adds a new lesson" do
    section = Section.create({name: "cheese"})
    visit sections_path(section)
    click_on 'Add A Lesson'
    fill_in 'Name', :with => 'Cheese'
    fill_in 'Content', :with => 'lots of cheesey things'
    fill_in 'Number', :with => "1"
    click_on 'Create Lesson'
    expect(page). to have_content 'Lessons'
  end
end
