require 'test_helper'

class TurnoversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turnover = turnovers(:one)
  end

  test "should get index" do
    get turnovers_url
    assert_response :success
  end

  test "should get new" do
    get new_turnover_url
    assert_response :success
  end

  test "should create turnover" do
    assert_difference('Turnover.count') do
      post turnovers_url, params: { turnover: { Remaing_medical: @turnover.Remaing_medical, Sallary_adapt: @turnover.Sallary_adapt, ads_cost: @turnover.ads_cost, agancey_cost: @turnover.agancey_cost, balanceLeavDay_timeD: @turnover.balanceLeavDay_timeD, balanceLeavDay_timeH: @turnover.balanceLeavDay_timeH, daily_hourly: @turnover.daily_hourly, indemnity: @turnover.indemnity, name_company: @turnover.name_company, oneSallary_admin: @turnover.oneSallary_admin, oneSallary_interviewer: @turnover.oneSallary_interviewer, oneSpentAdmin_timeD: @turnover.oneSpentAdmin_timeD, oneSpentAdmin_timeH: @turnover.oneSpentAdmin_timeH, onespentinterview_timeD: @turnover.onespentinterview_timeD, onespentinterview_timeH: @turnover.onespentinterview_timeH, position: @turnover.position, sallart_newer: @turnover.sallart_newer, sallary_HR: @turnover.sallary_HR, sallary_adminRotenlefter: @turnover.sallary_adminRotenlefter, sallary_adminprocess: @turnover.sallary_adminprocess, sallary_left: @turnover.sallary_left, sallary_manger: @turnover.sallary_manger, sallary_trainer: @turnover.sallary_trainer, spentEmployee_timeD: @turnover.spentEmployee_timeD, spentEmployee_timeH: @turnover.spentEmployee_timeH, spentHR_timeD: @turnover.spentHR_timeD, spentHR_timeH: @turnover.spentHR_timeH, spentRotenLefter_timeD: @turnover.spentRotenLefter_timeD, spentRotenlefter_timeH: @turnover.spentRotenlefter_timeH, spentSupervisor_timeD: @turnover.spentSupervisor_timeD, spentSupervisor_timeH: @turnover.spentSupervisor_timeH, spentadapt_timeD: @turnover.spentadapt_timeD, spentadapt_timeH: @turnover.spentadapt_timeH, spentprocess_timeD: @turnover.spentprocess_timeD, spentprocess_timeH: @turnover.spentprocess_timeH, spenttrain_timeD: @turnover.spenttrain_timeD, spenttrain_timeH: @turnover.spenttrain_timeH, threeSallary_admin: @turnover.threeSallary_admin, threeSallary_interviewer: @turnover.threeSallary_interviewer, threeSpentAdmin_timeD: @turnover.threeSpentAdmin_timeD, threeSpentAdmin_timeH: @turnover.threeSpentAdmin_timeH, threeSpentinterview_timeD: @turnover.threeSpentinterview_timeD, threeSpentinterview_timeH: @turnover.threeSpentinterview_timeH, twoSallary_admin: @turnover.twoSallary_admin, twoSallary_interviewer: @turnover.twoSallary_interviewer, twoSpentAdmin_timeD: @turnover.twoSpentAdmin_timeD, twoSpentAdmin_timeH: @turnover.twoSpentAdmin_timeH, twoSpentinterviewD: @turnover.twoSpentinterviewD, twoSpentinterview_timeH: @turnover.twoSpentinterview_timeH, years_lefter: @turnover.years_lefter } }
    end

    assert_redirected_to turnover_url(Turnover.last)
  end

  test "should show turnover" do
    get turnover_url(@turnover)
    assert_response :success
  end

  test "should get edit" do
    get edit_turnover_url(@turnover)
    assert_response :success
  end

  test "should update turnover" do
    patch turnover_url(@turnover), params: { turnover: { Remaing_medical: @turnover.Remaing_medical, Sallary_adapt: @turnover.Sallary_adapt, ads_cost: @turnover.ads_cost, agancey_cost: @turnover.agancey_cost, balanceLeavDay_timeD: @turnover.balanceLeavDay_timeD, balanceLeavDay_timeH: @turnover.balanceLeavDay_timeH, daily_hourly: @turnover.daily_hourly, indemnity: @turnover.indemnity, name_company: @turnover.name_company, oneSallary_admin: @turnover.oneSallary_admin, oneSallary_interviewer: @turnover.oneSallary_interviewer, oneSpentAdmin_timeD: @turnover.oneSpentAdmin_timeD, oneSpentAdmin_timeH: @turnover.oneSpentAdmin_timeH, onespentinterview_timeD: @turnover.onespentinterview_timeD, onespentinterview_timeH: @turnover.onespentinterview_timeH, position: @turnover.position, sallart_newer: @turnover.sallart_newer, sallary_HR: @turnover.sallary_HR, sallary_adminRotenlefter: @turnover.sallary_adminRotenlefter, sallary_adminprocess: @turnover.sallary_adminprocess, sallary_left: @turnover.sallary_left, sallary_manger: @turnover.sallary_manger, sallary_trainer: @turnover.sallary_trainer, spentEmployee_timeD: @turnover.spentEmployee_timeD, spentEmployee_timeH: @turnover.spentEmployee_timeH, spentHR_timeD: @turnover.spentHR_timeD, spentHR_timeH: @turnover.spentHR_timeH, spentRotenLefter_timeD: @turnover.spentRotenLefter_timeD, spentRotenlefter_timeH: @turnover.spentRotenlefter_timeH, spentSupervisor_timeD: @turnover.spentSupervisor_timeD, spentSupervisor_timeH: @turnover.spentSupervisor_timeH, spentadapt_timeD: @turnover.spentadapt_timeD, spentadapt_timeH: @turnover.spentadapt_timeH, spentprocess_timeD: @turnover.spentprocess_timeD, spentprocess_timeH: @turnover.spentprocess_timeH, spenttrain_timeD: @turnover.spenttrain_timeD, spenttrain_timeH: @turnover.spenttrain_timeH, threeSallary_admin: @turnover.threeSallary_admin, threeSallary_interviewer: @turnover.threeSallary_interviewer, threeSpentAdmin_timeD: @turnover.threeSpentAdmin_timeD, threeSpentAdmin_timeH: @turnover.threeSpentAdmin_timeH, threeSpentinterview_timeD: @turnover.threeSpentinterview_timeD, threeSpentinterview_timeH: @turnover.threeSpentinterview_timeH, twoSallary_admin: @turnover.twoSallary_admin, twoSallary_interviewer: @turnover.twoSallary_interviewer, twoSpentAdmin_timeD: @turnover.twoSpentAdmin_timeD, twoSpentAdmin_timeH: @turnover.twoSpentAdmin_timeH, twoSpentinterviewD: @turnover.twoSpentinterviewD, twoSpentinterview_timeH: @turnover.twoSpentinterview_timeH, years_lefter: @turnover.years_lefter } }
    assert_redirected_to turnover_url(@turnover)
  end

  test "should destroy turnover" do
    assert_difference('Turnover.count', -1) do
      delete turnover_url(@turnover)
    end

    assert_redirected_to turnovers_url
  end
end
