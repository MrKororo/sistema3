# = topes_legales_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase topes_legales_controller
# Clase creada para realizar el control de las acciones para datos de los topes legales
# y los parametros permitidos en la clase.
#
# Definición de la clase topes_legales_controller compuesta por
# * metodo index
# * metodo show
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * set_topes_legale
# * topes_legale_params
class TopesLegalesController < ApplicationController
  before_action :authorize
  before_action :set_topes_legale, only: [:show, :edit, :update, :destroy]

  # GET /topes_legales
  # GET /topes_legales.json
  def index
    @topes_legales = TopesLegale.all
  end

  # GET /topes_legales/1
  # GET /topes_legales/1.json
  def show
  end

  # GET /topes_legales/new
  def new
    @topes_legale = TopesLegale.new
  end

  # GET /topes_legales/1/edit
  def edit
  end

  # POST /topes_legales
  # POST /topes_legales.json
  def create
    @topes_legale = TopesLegale.new(topes_legale_params)

    respond_to do |format|
      if @topes_legale.save
        format.html { redirect_to @topes_legale, notice: 'Tope legal creado exitosamente.' }
        format.json { render :show, status: :created, location: @topes_legale }
      else
        format.html { render :new }
        format.json { render json: @topes_legale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topes_legales/1
  # PATCH/PUT /topes_legales/1.json
  def update
    respond_to do |format|
      if @topes_legale.update(topes_legale_params)
        format.html { redirect_to @topes_legale, notice: 'Tope legal actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @topes_legale }
      else
        format.html { render :edit }
        format.json { render json: @topes_legale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topes_legales/1
  # DELETE /topes_legales/1.json
  def destroy
    @topes_legale.destroy
    respond_to do |format|
      format.html { redirect_to topes_legales_url, notice: 'Tope legal eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topes_legale
      @topes_legale = TopesLegale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topes_legale_params
      params.require(:topes_legale).permit(:topeMaximo, :valor_uf, :cantidad_uf,:detalle)
    end
end
