class BonificacionsController < ApplicationController
  before_action :authorize
  before_action :set_bonificacion, only: [:show, :edit, :update, :destroy]

  # GET /bonificacions
  # GET /bonificacions.json
  def index
    @bonificacions = Bonificacion.all
  end

  # GET /bonificacions/1
  # GET /bonificacions/1.json
  def show
  end

  # GET /bonificacions/new
  def new
    @bonificacion = Bonificacion.new
  end

  # GET /bonificacions/1/edit
  def edit
  end

  # POST /bonificacions
  # POST /bonificacions.json
  def create
    @bonificacion = Bonificacion.new(bonificacion_params)

    respond_to do |format|
      if @bonificacion.save
        format.html { redirect_to @bonificacion, notice: 'Bonificación fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @bonificacion }
      else
        format.html { render :new }
        format.json { render json: @bonificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bonificacions/1
  # PATCH/PUT /bonificacions/1.json
  def update
    respond_to do |format|
      if @bonificacion.update(bonificacion_params)
        format.html { redirect_to @bonificacion, notice: 'Bonificación fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @bonificacion }
      else
        format.html { render :edit }
        format.json { render json: @bonificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonificacions/1
  # DELETE /bonificacions/1.json
  def destroy
    @bonificacion.destroy
    respond_to do |format|
      format.html { redirect_to bonificacions_url, notice: 'Bonificación fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bonificacion
      @bonificacion = Bonificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bonificacion_params
      params.require(:bonificacion).permit(:bono, :detalle_bono, :subcategorium_id)
    end
end
