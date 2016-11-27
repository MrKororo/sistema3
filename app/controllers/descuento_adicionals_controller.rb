class DescuentoAdicionalsController < ApplicationController
  before_action :authorize
  before_action :set_descuento_adicional, only: [:show, :edit, :update, :destroy]

  # GET /descuento_adicionals
  # GET /descuento_adicionals.json
  def index
    @descuento_adicionals = DescuentoAdicional.all
  end

  # GET /descuento_adicionals/1
  # GET /descuento_adicionals/1.json
  def show
  end

  # GET /descuento_adicionals/new
  def new
    @descuento_adicional = DescuentoAdicional.new
  end

  # GET /descuento_adicionals/1/edit
  def edit
  end

  # POST /descuento_adicionals
  # POST /descuento_adicionals.json
  def create
    @descuento_adicional = DescuentoAdicional.new(descuento_adicional_params)

    respond_to do |format|
      if @descuento_adicional.save
        format.html { redirect_to @descuento_adicional, notice: 'Descuento adicional was successfully created.' }
        format.json { render :show, status: :created, location: @descuento_adicional }
      else
        format.html { render :new }
        format.json { render json: @descuento_adicional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descuento_adicionals/1
  # PATCH/PUT /descuento_adicionals/1.json
  def update
    respond_to do |format|
      if @descuento_adicional.update(descuento_adicional_params)
        format.html { redirect_to @descuento_adicional, notice: 'Descuento adicional was successfully updated.' }
        format.json { render :show, status: :ok, location: @descuento_adicional }
      else
        format.html { render :edit }
        format.json { render json: @descuento_adicional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descuento_adicionals/1
  # DELETE /descuento_adicionals/1.json
  def destroy
    @descuento_adicional.destroy
    respond_to do |format|
      format.html { redirect_to descuento_adicionals_url, notice: 'Descuento adicional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descuento_adicional
      @descuento_adicional = DescuentoAdicional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descuento_adicional_params
      params.require(:descuento_adicional).permit(:descuento_adicional, :detalle)
    end
end
