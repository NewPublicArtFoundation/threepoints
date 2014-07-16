class Graffiti < ActiveRecord::Base
  has_attached_file :images, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
  belongs_to :location
  belongs_to :artist
  has_many :graffiti_pictures
  acts_as_votable
  has_paper_trail
  acts_as_taggable
  resourcify
end
