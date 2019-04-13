class FaltaController < ApplicationController
  before_action :set_faltum, only: [:show, :edit, :update, :destroy]

  # GET /falta
  # GET /falta.json
  def index
    @falta = Faltum.all
  end

  # GET /falta/1
  # GET /falta/1.json
  def show
  end

  # GET /falta/new
  def new
    @faltum = Faltum.new
  end

  # GET /falta/1/edit
  def edit
  end

  # POST /falta
  # POST /falta.json
  def create
    @faltum = Faltum.new(faltum_params)

    respond_to do |format|
      if @faltum.save
        format.html { redirect_to @faltum, notice: 'Faltum was successfully created.' }
        format.json { render :show, status: :created, location: @faltum }
      else
        format.html { render :new }
        format.json { render json: @faltum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /falta/1
  # PATCH/PUT /falta/1.json
  def update
    respond_to do |format|
      if @faltum.update(faltum_params)
        format.html { redirect_to @faltum, notice: 'Faltum was successfully updated.' }
        format.json { render :show, status: :ok, location: @faltum }
      else
        format.html { render :edit }
        format.json { render json: @faltum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /falta/1
  # DELETE /falta/1.json
  def destroy
    @faltum.destroy
    respond_to do |format|
      format.html { redirect_to falta_url, notice: 'Faltum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faltum
      @faltum = Faltum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faltum_params
      params.require(:faltum).permit(:presenças)
    end
end
