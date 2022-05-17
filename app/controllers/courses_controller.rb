class CoursesController < ApplicationController


  def index
    @courses = Course.all
  end

  def show
    @course = Courses.find(params[:id])
  end

  private
  def course_params
    params.require(:course).permit(:titulo, :duracion, :detalle)
  end

end
