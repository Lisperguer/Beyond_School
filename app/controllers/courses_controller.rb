class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @courses = Course.all
    @user = current_user
  end

  def show
    @course = Course.find(params[:id])
  end

  def my_courses
    @courses = Course.all
    @user = current_user
  end
  private

  def course_params
    params.require(:course).permit(:titulo, :duracion, :detalle, :photo)
  end


end
