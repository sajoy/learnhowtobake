require 'rails_helper'

describe "the show a lesson process" do
  it "shows a lesson" do
    section = Section.create({name: "cheese"})
    lesson = Lesson.create(:name => 'Cheese', :section_id => 1, :number => 1, :content => 'lots of cheesey things')
    section.lessons.push(lesson)
    visit sections_path
    click_on lesson.name
    expect(page). to have_content lesson.content
  end
end
