class AnalyticsController < ApplicationController
  def index
    @turnovers = Turnover.all
  end
end
