class IsapresController < ApplicationController
  before_action :set_isapre, only: [:show, :edit, :update, :destroy]

  # GET /isapres
  # GET /isapres.json
  def index
    @isapres = Isapre.all
  end

  # GET /isapres/1
  # GET /isapres/1.json
  def show
  end

  # GET /isapres/new
  def new
    @isapre = Isapre.new
  end

  # GET /isapres/1/edit
  def edit
  end

  # POST /isapres
  # POST /isapres.json
  def create
    @isapre = Isapre.new(isapre_params)

    respond_to do |format|
      if @isapre.save
        format.html { redirect_to @isapre, notice: 'Isapre was successfully created.' }
        format.json { render :show, status: :created, location: @isapre }
      else
        format.html { render :new }
        format.json { render json: @isapre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isapres/1
  # PATCH/PUT /isapres/1.json
  def update
    respond_to do |format|
      if @isapre.update(isapre_params)
        format.html { redirect_to @isapre, notice: 'Isapre was successfully updated.' }
        format.json { render :show, status: :ok, location: @isapre }
      else
        format.html { render :edit }
        format.json { render json: @isapre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isapres/1
  # DELETE /isapres/1.json
  def destroy
    @isapre.destroy
    respond_to do |format|
      format.html { redirect_to isapres_url, notice: 'Isapre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isapre
      @isapre = Isapre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isapre_params
      params.require(:isapre).permit(:isapre)
    end
end
