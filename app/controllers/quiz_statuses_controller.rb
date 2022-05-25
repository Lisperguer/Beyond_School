class QuizStatusesController < ApplicationController

  
  def create
    if params[:pregunta_a]["respuesta_1"] == "1" && params[:pregunta_b]["respuesta_2"] == "1" && params[:pregunta_c]["respuesta_3"] == "1"
      g = Section.where(id: params["current_section"]["r"].to_i + 1).first
      h = Section.where(id: params["current_section"]["r"].to_i).first
      
      if g
        #Hacer un contador con la cantidad de respuestas de buena( contador i =0)
        #Hacer un if para ver si el contador es mayor a cierto puntaje
          #Si es mayor lanzar un alert y que el botón de ese alert tenga el redirect
          #Y si no, lanzar alert nuevamente y que el bóton de ese alert te lleve al mismo modulo
          flash[:notice] = 'Has pasado el módulo, felicidades!'
          redirect_to section_path(g)
      else
        flash[:notice] = 'No hay más modulos, aprobaste este curso!'
         #Agregar un if al view, de que si usercourse.status = true, entonces agregar botoncito pequeño que diga hecho o aprobado
         #revisar si user_course funciona sino UserCourse
         @user = current_user.id
         @current_section = Section.find(params["current_section"]["r"].to_i)
         UserCourse.create(user_id:@user, course_id: @current_section.course_id, status: true)
        #  @curso = Section.find(params[:course_id])         
        
        # @Actualizacion = current_user.user_course.status = true;
        # @Actualizacion.save
        redirect_to root_path
      end
    else
      # si desaprobe =>
      flash[:notice] = 'No has pasado el modulo, vuelve a intentarlo!'

      redirect_to section_path(h)
    end
  end

  # def quizzquestions
    
  #   respond_to do |format|
  #     format.js

  #   end
  # end
end
