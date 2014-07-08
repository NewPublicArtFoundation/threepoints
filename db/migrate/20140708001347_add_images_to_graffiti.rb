class AddImagesToGraffiti < ActiveRecord::Migration
  def self.up
    change_table :graffitis do |t|
      t.attachment :uploaded_image
      t.string     :image_url
    end
  end

  def self.down
    drop_attached_file :graffitis, :uploaded_image
  end
end
