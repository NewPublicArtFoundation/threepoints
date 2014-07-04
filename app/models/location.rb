class Location < ActiveRecord::Base
  has_many :graffiti_pictures
  has_and_belongs_to_many :graffitis
end
