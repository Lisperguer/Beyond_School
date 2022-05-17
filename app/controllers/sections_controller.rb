class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @quiz = @section.quiz
  end
end
