class Referee < ActiveRecord::Base
  has_many :matches
  attr_accessible :name, :present
end
