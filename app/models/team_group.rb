class TeamGroup < ActiveRecord::Base
  has_many :teams
  has_many :poules

  attr_accessible :activated, :name, :namecode

  scope :ordered, order(:namecode)

  validates :name, :uniqueness => true, :allow_nil => false, :presence => true
  validates :namecode, :uniqueness => true, :allow_nil => false, :presence => true
end
