class AddImagesToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :image, :attachment
  end
end
