# = subcategoria_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase subcategoria_controller
# Clase creada para realizar el control de las acciones para datos de las subcategorias
# y los parametros permitidos en la clase.
#
# Definición de la clase subcategoria_controller compuesta por
# * metodo index
# * metodo show
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * set_subcategorium
# * subcategorium_params
class SubcategoriaController < ApplicationController
  before_action :authorize
  before_action :set_subcategorium, only: [:show, :edit, :update, :destroy]

  # GET /subcategoria
  # GET /subcategoria.json
  def index
    @subcategoria = Subcategorium.all
  end

  # GET /subcategoria/1
  # GET /subcategoria/1.json
  def show
  end

  # GET /subcategoria/new
  def new
    @subcategorium = Subcategorium.new
  end

  # GET /subcategoria/1/edit
  def edit
  end

  # POST /subcategoria
  # POST /subcategoria.json
  def create
    @subcategorium = Subcategorium.new(subcategorium_params)

    respond_to do |format|
      if @subcategorium.save
        format.html { redirect_to @subcategorium, notice: 'Subcategoria fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @subcategorium }
      else
        format.html { render :new }
        format.json { render json: @subcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategoria/1
  # PATCH/PUT /subcategoria/1.json
  def update
    respond_to do |format|
      if @subcategorium.update(subcategorium_params)
        format.html { redirect_to @subcategorium, notice: 'Subcategoria fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @subcategorium }
      else
        format.html { render :edit }
        format.json { render json: @subcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategoria/1
  # DELETE /subcategoria/1.json
  def destroy
    @subcategorium.destroy
    respond_to do |format|
      format.html { redirect_to subcategoria_url, notice: 'Subcategoria fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategorium
      @subcategorium = Subcategorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategorium_params
      params.require(:subcategorium).permit(:subcategoria, :categorium_id)
    end
end
