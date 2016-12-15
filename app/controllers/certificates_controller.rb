class CertificatesController < ApplicationController
  before_action :authorize, except: [:index,:show,:update,:edit]
  before_action :set_certificate, only: [:show, :edit, :update, :destroy]

  # GET /certificates
  # GET /certificates.json
  def index
    if current_user and current_user.tipo_usuario == "Administrador"
      @certificates= Certificate.all

    else
      @certificates=Certificate.where(rut_personal: current_user.rut_usuario)
    end
    # elsif params[:search] and params[:search]!=""
    #   @certificates = Certificate.search(params[:search]).order("created_at DESC")
    # end
  end

  # GET /certificates/1
  # GET /certificates/1.json
  def show
    @certificate = Certificate.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
      pdf = CertificadoAntiguedadPdf.new(@certificate)
      send_data pdf.render, filename: "certificate #{@certificate}.pdf",
                            type: "application/pdf",
                            disposition: "inline"
      end
    end
  end

  # GET /certificates/new
  def new
    @certificate = Certificate.new
  end

  # GET /certificates/1/edit
  def edit
  end

  # Certificate /certificates
  # Certificate /certificates.json
  def create
    @certificate = Certificate.new(certificate_params)

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to @certificate, notice: 'Certificado fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @certificate }
      else
        format.html { render :new }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificates/1
  # PATCH/PUT /certificates/1.json
  def update
    respond_to do |format|
      if @certificate.update(certificate_params)
        format.html { redirect_to @certificate, notice: 'Certificado fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @certificate }
      else
        format.html { render :edit }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificates/1
  # DELETE /certificates/1.json
  def destroy
    @certificate.destroy
    respond_to do |format|
      format.html { redirect_to certificates_url, notice: 'Certificado fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_params
      params.require(:certificate).permit(:personal_id, :rut_personal, :motivo)
    end
end
