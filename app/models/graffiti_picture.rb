class GraffitiPicture < ActiveRecord::Base
  has_attached_file :uploaded_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :uploaded_image, :content_type => /\Aimage\/.*\Z/
  belongs_to :graffiti
  has_paper_trail
end
