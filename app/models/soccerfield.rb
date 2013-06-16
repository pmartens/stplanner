class Soccerfield < ActiveRecord::Base
  has_many :matches

  attr_accessible :description, :fieldcode, :name, :present

  scope :ordered, order(:fieldcode)

  validates :name, :uniqueness => true, :allow_nil => false, :presence => true
  validates :fieldcode, :uniqueness => true, :allow_nil => false, :presence => true
end
