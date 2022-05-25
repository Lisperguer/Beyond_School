class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(user: current_user)
  end

  def new
    @review = Review.new
    @course = Course.find(params[:course_id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @course = Course.find(params[:course_id])
    @review.course = @course
    @review.user = current_user

    if @review.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @course = @review.course
    @review.update(review_params)

    redirect_to course_path(@course)
  end


  def destroy
    @review = review.find(params[:id])
    @course = @review.course
    @review.destroy
    redirect_to courses_path
  end



  private

  def review_params
    params.require(:review).permit(:comentario, :rating)
  end
end
