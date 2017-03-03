# = sessions_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase sessions_controller
# Clase creada para realizar el control de las acciones para datos de las sesiones
# y los parametros permitidos en la clase.
#
# Definición de la clase sessions_controller compuesta por
# * metodo new
# * metodo create
# * metodo destroy

class SessionsController < ApplicationController

  def new
  end

  # Crea una sesion en el sistema a partir de la existencia de los datos del usuario 
  # en el sistema.
  def create
    user = User.find_by_rut_usuario(params[:rut_usuario])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Ha ingresado exitosamente'
    else
      render :new
    end
  end
  
  #Destruye la sesion al salir del sistema
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Se ha cerrado la sesion'
  end

end
