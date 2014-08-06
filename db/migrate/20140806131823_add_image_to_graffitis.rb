class AddImageToGraffitis < ActiveRecord::Migration
  def change
    add_column :graffitis, :image_url, :string
  end
end
