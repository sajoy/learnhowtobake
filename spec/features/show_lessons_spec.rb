require 'rails_helper'

describe "the show a lesson process" do
  it "shows a lesson" do
    lesson = Lesson.create(:name => 'Cheese', :content => 'lots of cheesey things')
    visit lessons_path
    click_on lesson.name
    expect(page). to have_content lesson.content
  end
end
