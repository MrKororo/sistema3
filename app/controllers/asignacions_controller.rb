class AsignacionsController < ApplicationController
  before_action :authorize
  before_action :set_asignacion, only: [:show, :edit, :update, :destroy]

  # GET /asignacions
  # GET /asignacions.json
  def index
    @asignacions = Asignacion.all
  end

  # GET /asignacions/1
  # GET /asignacions/1.json
  def show
  end

  # GET /asignacions/new
  def new
    @asignacion = Asignacion.new
  end

  # GET /asignacions/1/edit
  def edit
  end

  # POST /asignacions
  # POST /asignacions.json
  def create
    @asignacion = Asignacion.new(asignacion_params)

    respond_to do |format|
      if @asignacion.save
        format.html { redirect_to @asignacion, notice: 'Asignación fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @asignacion }
      else
        format.html { render :new }
        format.json { render json: @asignacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignacions/1
  # PATCH/PUT /asignacions/1.json
  def update
    respond_to do |format|
      if @asignacion.update(asignacion_params)
        format.html { redirect_to @asignacion, notice: 'Asignación fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @asignacion }
      else
        format.html { render :edit }
        format.json { render json: @asignacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacions/1
  # DELETE /asignacions/1.json
  def destroy
    @asignacion.destroy
    respond_to do |format|
      format.html { redirect_to asignacions_url, notice: 'Asignación fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacion
      @asignacion = Asignacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacion_params
      params.require(:asignacion).permit(:asignacion, :detalle_asignacion, :subcategorium_id)
    end
end
