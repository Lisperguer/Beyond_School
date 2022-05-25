class QuizStatusesController < ApplicationController

  function sweetalertclick() {

swal({
    title: 'Request a DDS',
    text: "Please log in to DDS website to request a pick up, my code is: xxxx. By pressing ok you will link to google.com",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Ok",
  }).then((result) => {
  console.log(result)
    if (result) {
      window.location.href = "google.com";
    }
  });
  
  def create
    if params[:pregunta_a]["respuesta_1"] == "1" && params[:pregunta_b]["respuesta_2"] == "1" && params[:pregunta_c]["respuesta_3"] == "1"
      g = Section.where(id: params["current_section"]["r"].to_i + 1).first
      h = Section.where(id: params["current_section"]["r"].to_i).first

      if g
        #Hacer un contador con la cantidad de respuestas de buena( contador i =0)
        #Hacer un if para ver si el contador es mayor a cierto puntaje
          #Si es mayor lanzar un alert y que el botón de ese alert tenga el redirect
          #Y si no, lanzar alert nuevamente y que el bóton de ese alert te lleve al mismo modulo
          sweetalertclick
          flash[:notice] = 'Has pasado el módulo, felicidades!'
          redirect_to section_path(g)
      else
        flash[:notice] = 'No hay más modulos, aprobaste este curso!'
         #Agregar un if al view, de que si usercourse.status = true, entonces agregar botoncito pequeño que diga hecho o aprobado
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
