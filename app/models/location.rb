class Location < ActiveRecord::Base
  has_many :graffiti_pictures
  has_and_belongs_to_many :graffitis
  has_and_belongs_to_many :artists
  acts_as_votable
  has_paper_trail
  resourcify
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  extend FriendlyId
  friendly_id :name, use: :slugged
end
