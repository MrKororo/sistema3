# = personals_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase personals_controller
# Clase creada para realizar el control de las acciones para datos de las liquidaciones
# y los parametros permitidos en la clase.
#
# Definición de la clase personals_controller compuesta por
# * metodo index
# * metodo trueToAct
# * metodo search
# * metodo new
# * metodo edit
# * metodo create
# * metodo update
# * metodo destroy
# * metodo authorize
# * set_personal
# * personal_params
class PersonalsController < ApplicationController
  before_action :authorize
  before_action :set_personal, only: [:show, :edit, :update, :destroy]

  #Lista todos los datos ingresados en la tabla de Personal y se hace
  #uso de metodos de paginacion para la pagina index.
  def index
    @personals = Personal.order("nombre_personal").page(params[:page]).per_page(10)
  end

  #Traduce los estados para el personal activo y permite su uso en las vistas
  #@boolean
  def trueToAct(boolean)
    if boolean == true
       return 'Activo'
     else
       return 'Inactivo'
     end
  end
  helper_method :trueToAct

  #Permite realizar busquedas en la tabla de personal y muestra los resultados
  #en la vista Index.
  def search
    @personals = Personal.search do
      keywords params[:query]
    end.results

    respond_to do |format|
      format.html { render :action => "index" }
      format.xml  { render :xml => @personal }
    end
  end
  

  # GET /personals/new
  def new
    @personal = Personal.new
  end

  # GET /personals/1/edit
  def edit
  end

  # POST /personals
  # POST /personals.json
  def create
    @personal = Personal.new(personal_params)

    respond_to do |format|
      if @personal.save
        format.html { redirect_to @personal, notice: 'Trabajador creado exitosamente.' }
        format.json { render :show, status: :created, location: @personal }
      else
        format.html { render :new }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personals/1
  # PATCH/PUT /personals/1.json
  def update
    respond_to do |format|
      if @personal.update(personal_params)
        format.html { redirect_to @personal, notice: 'Trabajador actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @personal }
      else
        format.html { render :edit }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.json
  def destroy
    @personal.destroy
    respond_to do |format|
      format.html { redirect_to personals_url, notice: 'Trabajador eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_params
      params.require(:personal).permit(:nombre_personal, :apellidop_personal, :apellidom_personal, :rut_personal, :isapre_id, :banco_id, :subcategorium_id, :tipocontrato_id, :centrocosto_id, :afp_id, :personal_activo, :fecha_ingreso, :sindicato_id, :numero_cuenta, :cargas_familiar, :cotizacion_voluntaria, :descuento_isapre)
    end
end
