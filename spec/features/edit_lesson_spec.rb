require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    lesson = Lesson.create(:name => 'Cheese', :content => 'lots of cheesey things')
    visit lesson_path(lesson)
    click_on 'edit'
    fill_in 'Name', :with => 'Cheese!!!'
    fill_in 'Content', :with => 'lots of cheesey things!!'
    click_on 'Update Lesson'
    expect(page). to have_content 'Successfully'
  end
end
