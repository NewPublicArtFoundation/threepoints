class Location < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  after_validation :geocode, :if => :address_changed?
  geocoded_by :address

  has_many :graffitis
  has_and_belongs_to_many :artists

  has_paper_trail
  resourcify
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates_presence_of :name
  validates :slug, uniqueness: true
  acts_as_taggable
  acts_as_votable
end
