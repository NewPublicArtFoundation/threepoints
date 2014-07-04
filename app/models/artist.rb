class Artist < ActiveRecord::Base
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :graffitis
  acts_as_votable 
end
