require 'rails_helper'

describe "the add sections process" do
  it "adds a new section" do
    section = Section.create({name: "cheese"})
    visit sections_path
    click_on 'Add A Section'
    fill_in 'Name', :with => 'Cheese'
    click_on 'Create Section'
    expect(page). to have_content 'Lessons'
  end
end
