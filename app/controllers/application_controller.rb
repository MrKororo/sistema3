# = application_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase application_controller
# Clase creada para realizar el control de las acciones en toda la aplicacion
#
# Definición de la clase application_controller compuesta por
# * metodo set_locale
# * metodo default_url_options
# * metodo current_user
# * metodo lastCreated
# * metodo lastCategories
# * metodo authorize

class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception

  # Metodo que cambia el lenguaje por defecto de rails al lenguaje
  # seleccionado en config/application.rb
  def set_locale
    I18n.locale = params[:locale] 
  end

  #Metodo que incluye el lenguaje seleccionado para rails en la URL
  #del navegador
  def default_url_options
    {locale: I18n.locale}
  end

  private
  #Metodo que verifica los datos del usuario ingresado en el sistema
  #usado como helper_method para poder ser en las vistas de ser necesario
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  
  #Metodo busca los ultimos trabajadores ingresados en el sistema
  #usado como helper_method para poder ser en las vistas de ser necesario
  def lastCreated
 	@persona = Personal.order("created_at DESC").limit(4)
  end
  helper_method :lastCreated

  #Metodo busca las ultimas categorias creadas en el sistema
  #usado como helper_method para poder ser en las vistas de ser necesario
  def lastCategories
  	@category = Categorium.order("created_at DESC").limit(4)
  end
  helper_method :lastCategories
  
  #Metodo que comprueba si una persona se ha conectado al sistema y a su vez
  #verifica el tipo de usuario asignado, todo con el fin de separar los
  #datos que solo deben ser vistos por el administrador, es
  #usado como helper_method para poder ser en las vistas de ser necesario
  def authorize
    if current_user.nil? || current_user.tipo_usuario == "Empleado"
      redirect_to login_url, notice: "No esta autorizado para ver esto. Por favor ingrese al sistema o reingrese como administrador."
    end
  end
  helper_method :authorize
end
