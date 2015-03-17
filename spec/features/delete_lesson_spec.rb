require 'rails_helper'

describe "the delete lessons process" do
  it "deletes a lesson" do
    section = Section.create(:name => 'Cheese')
    lesson = Lesson.create(:name => 'Cheese', :section_id => 1, :number => 1, :content => 'lots of cheesey things')
    visit section_lesson_path(section, lesson)
    click_on 'delete'
    expect(page). to have_no_content(lesson)
  end
end
