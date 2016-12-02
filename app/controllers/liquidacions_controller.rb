class LiquidacionsController < ApplicationController
  before_action :authorize, except: [:index,:show]
  before_action :set_liquidacion, only: [:show, :edit, :update, :destroy]

  # GET /liquidacions
  # GET /liquidacions.json
  def index
    @liquidacions = Liquidacion.all
  end

  # GET /liquidacions/1
  # GET /liquidacions/1.json
  def show
    @liquidacion = Liquidacion.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
      pdf = LiquidacionPdf.new(@liquidacion)
      send_data pdf.render, filename: "liquidacion #{@liquidacion.personal.nombre_apellido}.pdf",
                            type: "application/pdf",
                            disposition: "inline"
      end
    end
  end
  # GET /liquidacions/new
  def new
    @liquidacion = Liquidacion.new
  end

  # GET /liquidacions/1/edit
  def edit
  end

  # POST /liquidacions
  # POST /liquidacions.json
  def create
    @liquidacion = Liquidacion.new(liquidacion_params)

    respond_to do |format|
      if @liquidacion.save
        format.html { redirect_to @liquidacion, notice: 'Liquidacion was successfully created.' }
        format.json { render :show, status: :created, location: @liquidacion }
      else
        format.html { render :new }
        format.json { render json: @liquidacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liquidacions/1
  # PATCH/PUT /liquidacions/1.json
  def update
    respond_to do |format|
      if @liquidacion.update(liquidacion_params)
        format.html { redirect_to @liquidacion, notice: 'Liquidacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @liquidacion }
      else
        format.html { render :edit }
        format.json { render json: @liquidacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liquidacions/1
  # DELETE /liquidacions/1.json
  def destroy
    @liquidacion.destroy
    respond_to do |format|
      format.html { redirect_to liquidacions_url, notice: 'Liquidacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liquidacion
      @liquidacion = Liquidacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liquidacion_params
      params.require(:liquidacion).permit(:asignacion_id, :habere_id, :bonificacion_id, :descuento_adicional_id, :personal_id, :fecha_pago, :porcentaje_afp, :descuento_afp, :descuento_isapre, :sindicato, :impuesto, :cotizacion_voluntaria, :horas_trabajadas, :remuneracion, :cantidad_horas_extra, :horas_extra, :vacaciones, :total_imponible, :total_haberes, :desc_legales, :desc_varios, :liquido_pagar, :rut_personal)
    end
end
