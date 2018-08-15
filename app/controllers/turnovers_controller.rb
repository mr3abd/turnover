class TurnoversController < ApplicationController
  before_action :authenticate_user!
  before_action :set_turnover, only: [:show, :edit, :update, :destroy]

  layout "turnover"

  # GET /turnovers
  # GET /turnovers.json
  def index
    @turnovers = Turnover.all
  end

  # GET /turnovers/1
  # GET /turnovers/1.json
  def show
  end

  # GET /turnovers/new
  def new
    @turnover = current_user.turnovers.build
  end

  # GET /turnovers/1/edit
  def edit
  end

  # POST /turnovers
  # POST /turnovers.json
  def create
    @turnover = current_user.turnovers.build(turnover_params)

    respond_to do |format|
      if @turnover.save
        format.html { redirect_to @turnover, notice: 'Turnover was successfully created.' }
        format.json { render :show, status: :created, location: @turnover }
      else
        format.html { render :new }
        format.json { render json: @turnover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnovers/1
  # PATCH/PUT /turnovers/1.json
  def update
    respond_to do |format|
      if @turnover.update(turnover_params)
        format.html { redirect_to @turnover, notice: 'Turnover was successfully updated.' }
        format.json { render :show, status: :ok, location: @turnover }
      else
        format.html { render :edit }
        format.json { render json: @turnover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnovers/1
  # DELETE /turnovers/1.json
  def destroy
    @turnover.destroy
    respond_to do |format|
      format.html { redirect_to turnovers_url, notice: 'Turnover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turnover
      @turnover = Turnover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turnover_params
      params.require(:turnover).permit(:name_company, :position, :sallary_left, :sallart_newer, :years_lefter, :sallary_manger, :daily_hourly, :agancey_cost, :ads_cost, :spentHR_timeH, :spentHR_timeD, :sallary_HR, :onespentinterview_timeH, :onespentinterview_timeD, :oneSallary_interviewer, :twoSpentinterview_timeH, :twoSpentinterviewD, :twoSallary_interviewer, :threeSpentinterview_timeH, :threeSpentinterview_timeD, :threeSallary_interviewer, :oneSpentAdmin_timeH, :oneSpentAdmin_timeD, :oneSallary_admin, :twoSpentAdmin_timeH, :twoSpentAdmin_timeD, :twoSallary_admin, :threeSpentAdmin_timeH, :threeSpentAdmin_timeD, :threeSallary_admin, :spentSupervisor_timeH, :spentSupervisor_timeD, :spentEmployee_timeH, :spentEmployee_timeD, :spentadapt_timeH, :spentadapt_timeD, :Sallary_adapt, :spenttrain_timeH, :spenttrain_timeD, :sallary_trainer, :spentprocess_timeH, :spentprocess_timeD, :sallary_adminprocess, :spentRotenlefter_timeH, :spentRotenLefter_timeD, :sallary_adminRotenlefter, :balanceLeavDay_timeH, :balanceLeavDay_timeD, :Remaing_medical, :indemnity)
    end
end
