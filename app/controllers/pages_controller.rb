class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @courses = Course.all
  end

  def contactanos
  end

  def sobre_nosotros
  end
end
