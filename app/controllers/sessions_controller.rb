class SessionsController < ApplicationController

  def new
  end
  def create
    user = User.find_by_rut_usuario(params[:rut_usuario])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Ha ingresado exitosamente'
    else
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Se ha cerrado la sesion'
  end

end
