class AddImagesToGraffitiImages < ActiveRecord::Migration
  def self.up
    change_table :graffiti_images do |t|
      t.attachment :uploaded_image
      t.string     :image_url
    end
  end

  def self.down
    drop_attached_file :graffiti_images, :uploaded_image
  end
end
