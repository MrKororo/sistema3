# = bancos_controller.rb
#
# Autor::   Diego Gonzalez Cuevas
#
# === Clase asignacions_controller
# Clase creada para realizar el control de las acciones para datos de bancos
# y los parametros permitidos en la clase.
#
# Definición de la clase bancos_controller compuesta por
# * metodo index
# * metodo new
# * metodo create
# * metodo update
# * metodo destroy
# * metodo authorize
# * set_banco
# * banco_params
class BancosController < ApplicationController
  before_action :authorize  
  before_action :set_banco, only: [:show, :edit, :update, :destroy]

  # GET /bancos
  # GET /bancos.json
  def index
    @bancos = Banco.all
  end

  # GET /bancos/1
  # GET /bancos/1.json
  def show
  end

  # GET /bancos/new
  def new
    @banco = Banco.new
  end

  # GET /bancos/1/edit
  def edit
  end

  # POST /bancos
  # POST /bancos.json
  def create
    @banco = Banco.new(banco_params)

    respond_to do |format|
      if @banco.save
        format.html { redirect_to @banco, notice: 'Banco fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @banco }
      else
        format.html { render :new }
        format.json { render json: @banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bancos/1
  # PATCH/PUT /bancos/1.json
  def update
    respond_to do |format|
      if @banco.update(banco_params)
        format.html { redirect_to @banco, notice: 'Banco fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @banco }
      else
        format.html { render :edit }
        format.json { render json: @banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bancos/1
  # DELETE /bancos/1.json
  def destroy
    @banco.destroy
    respond_to do |format|
      format.html { redirect_to bancos_url, notice: 'Banco fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banco
      @banco = Banco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banco_params
      params.require(:banco).permit(:banco, :tipo_cuenta)
    end
end
