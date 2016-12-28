class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_locale
  protect_from_forgery with: :exception
def set_locale
  I18n.locale = params[:locale] 
end

def default_url_options(options = {})
    {locale: I18n.locale}
  end

  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  

  def lastCreated
 	@persona = Personal.order("created_at DESC").limit(4)
  end
  helper_method :lastCreated

  def lastCategories
  	@category = Categorium.order("created_at DESC").limit(4)
  end
  helper_method :lastCategories

  def authorize
    if current_user.nil? || current_user.tipo_usuario == "Empleado"
      redirect_to login_url, notice: "No esta autorizado para ver esto. Por favor ingrese al sistema o reingrese como administrador."
    end
  end
  helper_method :authorize
end
