class Graffiti < ActiveRecord::Base
  has_attached_file :images, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
  # validates_presence_of :name
  # validates :slug, uniqueness: true

  belongs_to :location
  belongs_to :artist

  extend FriendlyId
  friendly_id :name, use: :slugged
  has_paper_trail
  acts_as_taggable
  acts_as_votable
  resourcify
  has_many :comments, as: :commentable

end
