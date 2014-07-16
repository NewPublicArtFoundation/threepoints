class Location < ActiveRecord::Base
  has_many :graffitis
  has_and_belongs_to_many :artists

  has_paper_trail
  resourcify
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates_presence_of :name
  validates :slug, uniqueness: true
  acts_as_taggable
  acts_as_votable
end
