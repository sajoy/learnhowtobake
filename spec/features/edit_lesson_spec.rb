require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    section = Section.create(:name => 'Cheese')
    lesson = Lesson.create(:name => 'Cheese', :section_id => section.id, :number => 1, :content => 'lots of cheesey things')
    visit section_lesson_path(section, lesson)
    click_on 'edit'
    fill_in 'Name', :with => 'Cheese!!!'
    fill_in 'Content', :with => 'lots of cheesey things!!'
    fill_in 'Number', :with => '2'
    click_on 'Update Lesson'
    expect(page). to have_content 'Successfully'
  end
end
