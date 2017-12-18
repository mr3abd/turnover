class PealsController < ApplicationController
  before_action :set_peal, only: [:show, :edit, :update, :destroy]

  # GET /peals
  # GET /peals.json
  def index
    @peals = Peal.all
  end

  # GET /peals/1
  # GET /peals/1.json
  def show
  end

  # GET /peals/new
  def new
    @peal = Peal.new
  end

  # GET /peals/1/edit
  def edit
  end

  # POST /peals
  # POST /peals.json
  def create
    @peal = Peal.new(peal_params)

    respond_to do |format|
      if @peal.save
        format.html { redirect_to @peal, notice: 'Peal was successfully created.' }
        format.json { render :show, status: :created, location: @peal }
      else
        format.html { render :new }
        format.json { render json: @peal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peals/1
  # PATCH/PUT /peals/1.json
  def update
    respond_to do |format|
      if @peal.update(peal_params)
        format.html { redirect_to @peal, notice: 'Peal was successfully updated.' }
        format.json { render :show, status: :ok, location: @peal }
      else
        format.html { render :edit }
        format.json { render json: @peal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peals/1
  # DELETE /peals/1.json
  def destroy
    @peal.destroy
    respond_to do |format|
      format.html { redirect_to peals_url, notice: 'Peal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peal
      @peal = Peal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peal_params
      params.require(:peal).permit(:name, :Date, :point, :money, :desc)
    end
end
