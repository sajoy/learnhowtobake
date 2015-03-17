class LessonsController < ApplicationController

  def index
    @section = Section.find(params[:section_id])
    @lessons = Lesson.all
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = Lesson.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson Successfully Added!"
      redirect_to sections_path
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = "Lesson Successfully Updated!"
      redirect_to sections_path
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to sections_path
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :content, :number)
    end
end
