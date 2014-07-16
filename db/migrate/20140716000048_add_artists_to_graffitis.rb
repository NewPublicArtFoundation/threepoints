class AddArtistsToGraffitis < ActiveRecord::Migration
  def change
    add_column :graffitis, :artist, :belongs_to, index: true
  end
end
