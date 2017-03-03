# = categoria_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase categoria_controller
# Clase creada para realizar el control de las acciones para datos de categorias
# y los parametros permitidos en la clase.
#
# Definición de la clase categoria_controller compuesta por
# * metodo index
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * metodo authorize
# * set_categorium
# * categorium_params
class CategoriaController < ApplicationController
  before_action :authorize
  before_action :set_categorium, only: [:show, :edit, :update, :destroy]

  # GET /categoria
  # GET /categoria.json
  def index
    @categoria = Categorium.order("categoria")
  end

  # GET /categoria/1
  # GET /categoria/1.json
  def show
  end

  # GET /categoria/new
  def new
    @categorium = Categorium.new
  end

  # GET /categoria/1/edit
  def edit
  end

  # POST /categoria
  # POST /categoria.json
  def create
    @categorium = Categorium.new(categorium_params)

    respond_to do |format|
      if @categorium.save
        format.html { redirect_to @categorium, notice: 'Categoría fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @categorium }
      else
        format.html { render :new }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria/1
  # PATCH/PUT /categoria/1.json
  def update
    respond_to do |format|
      if @categorium.update(categorium_params)
        format.html { redirect_to @categorium, notice: 'Categoría fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @categorium }
      else
        format.html { render :edit }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria/1
  # DELETE /categoria/1.json
  def destroy
    @categorium.destroy
    respond_to do |format|
      format.html { redirect_to categoria_url, notice: 'Categoría fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorium
      @categorium = Categorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorium_params
      params.require(:categorium).permit(:categoria)
    end
end
