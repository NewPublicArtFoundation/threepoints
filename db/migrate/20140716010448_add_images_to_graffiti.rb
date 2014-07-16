class AddImagesToGraffiti < ActiveRecord::Migration
  def self.up
    change_table :graffitis do |t|
      t.attachment :images
    end
  end

  def self.down
    drop_attached_file :graffitis, :images
  end
end
