class AddImagesToGraffitiPictures < ActiveRecord::Migration
  def self.up
    change_table :graffiti_pictures do |t|
      t.attachment :uploaded_image
    end
  end

  def self.down
    drop_attached_file :graffiti_pictures, :uploaded_image
  end
end
