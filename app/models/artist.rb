class Artist < ActiveRecord::Base
  has_many :artist_graffitis
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :graffitis
  acts_as_votable
  has_paper_trail
  resourcify
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates_presence_of :name
  validates :slug, uniqueness: true
end

