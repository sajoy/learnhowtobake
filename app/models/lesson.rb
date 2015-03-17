class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true

  def next
    Lesson.all.each do |lesson|
      if lesson.number === self.number + 1
        return lesson
      end
    end
  end

  def previous
    Lesson.all.each do |lesson|
      if lesson.number === self.number - 1
        return lesson
      end
    end
  end


end
