class Poule < ActiveRecord::Base
  belongs_to :team_group
  belongs_to :poule_name
  has_many :teams, :through => :team_group

  attr_accessible :team_group_id, :poule_name_id

  validates_uniqueness_of :team_group_id, :scope => :poule_name_id
end
