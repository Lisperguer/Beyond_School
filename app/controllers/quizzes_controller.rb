class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
    @section = @quiz.section
  end

  def calcular
    # Agarrar resultados del formulario que llamó a esta función
    # Hacer calculo si aprueba o no aprueba
    # Hacer un if si redirige a X página u otra dependiendo el resultado
    # también se puede hacer en javascript directamente
  end
end
