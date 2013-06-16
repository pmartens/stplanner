class Match < ActiveRecord::Base
  belongs_to :home_team, :class_name => 'Team', :foreign_key => 'home_team_id'
  belongs_to :away_team, :class_name => 'Team', :foreign_key => 'away_team_id'
  belongs_to :referee
  belongs_to :soccerfield
  attr_accessible :start, :home_team, :away_team, :homescore, :awayscore, :referee_id, :soccerfield_id
end
