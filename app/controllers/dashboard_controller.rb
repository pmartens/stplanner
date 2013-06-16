class DashboardController < ApplicationController
  def index
    @teams = Team.all
    @teams_not_present = Team.not_present( :joins => :team_group )
    @teams_present = Team.present
  end
end
