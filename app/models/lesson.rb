class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  belongs_to :section

  def next
    section = Section.find(self.section_id)
    lessons = section.lessons
    lessons.each do |lesson|
      if lesson.number === self.number + 1
        return lesson
      end
    end
  end

  def previous
    section = Section.find(self.section_id)
    lessons = section.lessons
    lessons.each do |lesson|
      if lesson.number === self.number - 1
        return lesson
      end
    end
  end


end
