require 'rails_helper'

describe "the add lessons process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add A Lesson'
    fill_in 'Name', :with => 'Cheese'
    fill_in 'Content', :with => 'lots of cheesey things'
    click_on 'Create Lesson'
    expect(page). to have_content 'Lessons'
  end

  # describe "the view lessons process" do
  #   it "views a lesson" do
  #     visit lessons_path
  #     click_on 'A Lesson'
  #     expect(page). to have_content 'Lesson'
  #   end
  # end # ASK ABOUT THIS!! 
end
