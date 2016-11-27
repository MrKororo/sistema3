class CentrocostosController < ApplicationController
  before_action :authorize
  before_action :set_centrocosto, only: [:show, :edit, :update, :destroy]

  # GET /centrocostos
  # GET /centrocostos.json
  def index
    @centrocostos = Centrocosto.all
  end

  # GET /centrocostos/1
  # GET /centrocostos/1.json
  def show
  end

  # GET /centrocostos/new
  def new
    @centrocosto = Centrocosto.new
  end

  # GET /centrocostos/1/edit
  def edit
  end

  # POST /centrocostos
  # POST /centrocostos.json
  def create
    @centrocosto = Centrocosto.new(centrocosto_params)

    respond_to do |format|
      if @centrocosto.save
        format.html { redirect_to @centrocosto, notice: 'Centrocosto was successfully created.' }
        format.json { render :show, status: :created, location: @centrocosto }
      else
        format.html { render :new }
        format.json { render json: @centrocosto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centrocostos/1
  # PATCH/PUT /centrocostos/1.json
  def update
    respond_to do |format|
      if @centrocosto.update(centrocosto_params)
        format.html { redirect_to @centrocosto, notice: 'Centrocosto was successfully updated.' }
        format.json { render :show, status: :ok, location: @centrocosto }
      else
        format.html { render :edit }
        format.json { render json: @centrocosto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centrocostos/1
  # DELETE /centrocostos/1.json
  def destroy
    @centrocosto.destroy
    respond_to do |format|
      format.html { redirect_to centrocostos_url, notice: 'Centrocosto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centrocosto
      @centrocosto = Centrocosto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centrocosto_params
      params.require(:centrocosto).permit(:nombre, :codigo, :detalle_centro)
    end
end
