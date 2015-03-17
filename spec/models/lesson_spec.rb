require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should belong_to :section}

   context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      section = Section.create({:name => "section"})
      current_lesson = Lesson.create({:name => 'lesson1', :section_id => section.id, :content => "cheesey ipsum", :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :section_id => section.id, :content => "cheesey ipsumi!", :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      section = Section.create({:name => "section"})
      current_lesson = Lesson.create({:name => 'lesson2', :section_id => section.id,  :content => "cheesey ipsum", :number => 2})
      previous_lesson = Lesson.create({:name => 'lesson1', :section_id => section.id, :content => "cheesey ipsumi!", :number => 1})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
