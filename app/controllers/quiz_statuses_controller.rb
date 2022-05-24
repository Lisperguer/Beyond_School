class QuizStatusesController < ApplicationController
  # def create
  #   if params[:pregunta_a]["respuesta_1"] == "1" && params[:pregunta_b]["respuesta_2"] == "1" && params[:pregunta_c]["respuesta_3"] == "1"
  #     g = Section.where(id: params["current_section"]["r"].to_i + 1).first
  #     if g
  #     redirect_to section_path(g)
  #     else
  #     redirect_to root_path
  #     end
  #   else
  #     # si desaprobe =>
  #     redirect_to root_path
  #   end
  # end

  def quizzquestions
    
    respond_to do |format|
      format.js

    end
  end
end
