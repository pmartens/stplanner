class Team < ActiveRecord::Base
  belongs_to :team_group
  belongs_to :poule
  has_many :home_matches, :class_name => 'Match', :foreign_key => 'home_team_id'
  has_many :away_matches, :class_name => 'Match', :foreign_key => 'away_team_id'

  attr_accessible :name, :present, :contactname, :phonenumber, :email, :teamnumber, :team_group_id

  scope :not_present, :conditions => { :present => 0 }
  scope :present, :conditions => { :present => 1 }

end
