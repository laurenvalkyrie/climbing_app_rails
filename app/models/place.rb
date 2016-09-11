class Place < ActiveRecord::Base
  has_many :routes

  validates :name, :presence => true
end
