# = haberes_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase haberes_controller
# Clase creada para realizar el control de las acciones para datos de los haberes
# y los parametros permitidos en la clase.
#
# Definición de la clase haberes_controller compuesta por
# * metodo index
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * metodo authorize
# * set_habere
# * habere_params
class HaberesController < ApplicationController
  before_action :authorize
  before_action :set_habere, only: [:show, :edit, :update, :destroy]

  # GET /haberes
  # GET /haberes.json
  def index
    @haberes = Habere.all
  end

  # GET /haberes/1
  # GET /haberes/1.json
  def show
  end

  # GET /haberes/new
  def new
    @habere = Habere.new
  end

  # GET /haberes/1/edit
  def edit
  end

  # POST /haberes
  # POST /haberes.json
  def create
    @habere = Habere.new(habere_params)

    respond_to do |format|
      if @habere.save
        format.html { redirect_to @habere, notice: 'Sueldo base creado exitosamente.' }
        format.json { render :show, status: :created, location: @habere }
      else
        format.html { render :new }
        format.json { render json: @habere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haberes/1
  # PATCH/PUT /haberes/1.json
  def update
    respond_to do |format|
      if @habere.update(habere_params)
        format.html { redirect_to @habere, notice: 'Sueldo base actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @habere }
      else
        format.html { render :edit }
        format.json { render json: @habere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haberes/1
  # DELETE /haberes/1.json
  def destroy
    @habere.destroy
    respond_to do |format|
      format.html { redirect_to haberes_url, notice: 'Sueldo base eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habere
      @habere = Habere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habere_params
      params.require(:habere).permit(:sueldo_base, :horas_pactadas, :valor_hora, :subcategorium_id)
    end
end
