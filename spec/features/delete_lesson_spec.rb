require 'rails_helper'

describe "the delete lessons process" do
  it "deletes a lesson" do
    lesson = Lesson.create(:name => 'Cheese', :content => 'lots of cheesey things')
    visit lesson_path(lesson)
    click_on 'delete'
    expect(page). to have_no_content(lesson)
  end
end
