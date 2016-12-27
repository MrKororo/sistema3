class SindicatosController < ApplicationController
  before_action :authorize
  before_action :set_sindicato, only: [:show, :edit, :update, :destroy]

  # GET /sindicatos
  # GET /sindicatos.json
  def index
    @sindicatos = Sindicato.all
  end

  # GET /sindicatos/1
  # GET /sindicatos/1.json
  def show
  end

  # GET /sindicatos/new
  def new
    @sindicato = Sindicato.new
  end

  # GET /sindicatos/1/edit
  def edit
  end

  # POST /sindicatos
  # POST /sindicatos.json
  def create
    @sindicato = Sindicato.new(sindicato_params)

    respond_to do |format|
      if @sindicato.save
        format.html { redirect_to @sindicato, notice: 'Sindicato fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @sindicato }
      else
        format.html { render :new }
        format.json { render json: @sindicato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sindicatos/1
  # PATCH/PUT /sindicatos/1.json
  def update
    respond_to do |format|
      if @sindicato.update(sindicato_params)
        format.html { redirect_to @sindicato, notice: 'Sindicato fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @sindicato }
      else
        format.html { render :edit }
        format.json { render json: @sindicato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sindicatos/1
  # DELETE /sindicatos/1.json
  def destroy
    @sindicato.destroy
    respond_to do |format|
      format.html { redirect_to sindicatos_url, notice: 'Sindicato fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sindicato
      @sindicato = Sindicato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sindicato_params
      params.require(:sindicato).permit(:nombre_sindicato, :cuota_sindical)
    end
end
