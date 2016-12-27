class ImpuestoUnicosController < ApplicationController
  before_action :authorize
  before_action :set_impuesto_unico, only: [:show, :edit, :update, :destroy]

  # GET /impuesto_unicos
  # GET /impuesto_unicos.json
  def index
    @impuesto_unicos = ImpuestoUnico.all
  end

  # GET /impuesto_unicos/1
  # GET /impuesto_unicos/1.json
  def show
  end

  # GET /impuesto_unicos/new
  def new
    @impuesto_unico = ImpuestoUnico.new
  end

  # GET /impuesto_unicos/1/edit
  def edit
  end

  # POST /impuesto_unicos
  # POST /impuesto_unicos.json
  def create
    @impuesto_unico = ImpuestoUnico.new(impuesto_unico_params)

    respond_to do |format|
      if @impuesto_unico.save
        format.html { redirect_to @impuesto_unico, notice: 'Impuesto unico creado exitosamente.' }
        format.json { render :show, status: :created, location: @impuesto_unico }
      else
        format.html { render :new }
        format.json { render json: @impuesto_unico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impuesto_unicos/1
  # PATCH/PUT /impuesto_unicos/1.json
  def update
    respond_to do |format|
      if @impuesto_unico.update(impuesto_unico_params)
        format.html { redirect_to @impuesto_unico, notice: 'Impuesto unico actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @impuesto_unico }
      else
        format.html { render :edit }
        format.json { render json: @impuesto_unico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impuesto_unicos/1
  # DELETE /impuesto_unicos/1.json
  def destroy
    @impuesto_unico.destroy
    respond_to do |format|
      format.html { redirect_to impuesto_unicos_url, notice: 'Impuesto unico eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impuesto_unico
      @impuesto_unico = ImpuestoUnico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impuesto_unico_params
      params.require(:impuesto_unico).permit(:imponibleMinimo, :imponibleMaximo, :factor, :rebaja, :impuestoEfectivoMax)
    end
end
