# = asignacion_familiars_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase asignacion_familiars_controller
# Clase creada para realizar el control de las acciones para datos de asignacion
# familiar y los parametros permitidos en la clase.
#
# Definición de la clase asignacion_familiars_controller compuesta por
# * metodo index
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * metodo authorize
# * set_asignacion_familiar
# * asignacion_familiar_params

class AsignacionFamiliarsController < ApplicationController
  before_action :authorize
  before_action :set_asignacion_familiar, only: [:show, :edit, :update, :destroy]

  # GET /asignacion_familiars
  # GET /asignacion_familiars.json
  def index
    @asignacion_familiars = AsignacionFamiliar.all
  end

  # GET /asignacion_familiars/1
  # GET /asignacion_familiars/1.json
  def show
  end

  # GET /asignacion_familiars/new
  def new
    @asignacion_familiar = AsignacionFamiliar.new
  end

  # GET /asignacion_familiars/1/edit
  def edit
  end

  # POST /asignacion_familiars
  # POST /asignacion_familiars.json
  def create
    @asignacion_familiar = AsignacionFamiliar.new(asignacion_familiar_params)

    respond_to do |format|
      if @asignacion_familiar.save
        format.html { redirect_to @asignacion_familiar, notice: 'Asignacion familiar creada exitosamente.' }
        format.json { render :show, status: :created, location: @asignacion_familiar }
      else
        format.html { render :new }
        format.json { render json: @asignacion_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignacion_familiars/1
  # PATCH/PUT /asignacion_familiars/1.json
  def update
    respond_to do |format|
      if @asignacion_familiar.update(asignacion_familiar_params)
        format.html { redirect_to @asignacion_familiar, notice: 'Asignacion familiar actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @asignacion_familiar }
      else
        format.html { render :edit }
        format.json { render json: @asignacion_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_familiars/1
  # DELETE /asignacion_familiars/1.json
  def destroy
    @asignacion_familiar.destroy
    respond_to do |format|
      format.html { redirect_to asignacion_familiars_url, notice: 'Asignacion familiar eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacion_familiar
      @asignacion_familiar = AsignacionFamiliar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacion_familiar_params
      params.require(:asignacion_familiar).permit(:tramo, :monto, :requisitoMinimo, :requisitoMaximo)
    end
end
