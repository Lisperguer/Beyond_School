class QuizStatusesController < ApplicationController
  def create
    if params[:pregunta_a]["respuesta_1"] == "1" && params[:pregunta_b]["respuesta_2"] == "1" && params[:pregunta_c]["respuesta_3"] == "1"
      g = Section.where(id: params["current_section"]["r"].to_i + 1).first
      h = Section.where(id: params["current_section"]["r"].to_i).first
      if g
      redirect_to section_path(g)
      else
      redirect_to courses_index_path
      end
    else
      # si desaprobe =>
      redirect_to section_path(id: params["current_section"]["r"].to_i)
    end
  end
end
