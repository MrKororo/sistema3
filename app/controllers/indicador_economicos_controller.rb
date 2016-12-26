class IndicadorEconomicosController < ApplicationController
  before_action :set_indicador_economico, only: [:show, :edit, :update, :destroy]

  # GET /indicador_economicos
  # GET /indicador_economicos.json
  def index
    @indicador_economicos = IndicadorEconomico.all
  end

  # GET /indicador_economicos/1
  # GET /indicador_economicos/1.json
  def show
  end

  # GET /indicador_economicos/new
  def new
    @indicador_economico = IndicadorEconomico.new
  end

  # GET /indicador_economicos/1/edit
  def edit
  end

  # POST /indicador_economicos
  # POST /indicador_economicos.json
  def create
    @indicador_economico = IndicadorEconomico.new(indicador_economico_params)

    respond_to do |format|
      if @indicador_economico.save
        format.html { redirect_to @indicador_economico, notice: 'Indicador economico creado exitosamente.' }
        format.json { render :show, status: :created, location: @indicador_economico }
      else
        format.html { render :new }
        format.json { render json: @indicador_economico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicador_economicos/1
  # PATCH/PUT /indicador_economicos/1.json
  def update
    respond_to do |format|
      if @indicador_economico.update(indicador_economico_params)
        format.html { redirect_to @indicador_economico, notice: 'Indicador economico actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @indicador_economico }
      else
        format.html { render :edit }
        format.json { render json: @indicador_economico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicador_economicos/1
  # DELETE /indicador_economicos/1.json
  def destroy
    @indicador_economico.destroy
    respond_to do |format|
      format.html { redirect_to indicador_economicos_url, notice: 'Indicador economico eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicador_economico
      @indicador_economico = IndicadorEconomico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicador_economico_params
      params.require(:indicador_economico).permit(:indicador, :valor)
    end
end
