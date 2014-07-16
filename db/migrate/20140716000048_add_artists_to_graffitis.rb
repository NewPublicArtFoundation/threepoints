class AddArtistsToGraffitis < ActiveRecord::Migration
  def change
    add_column :graffitis, :artist, :belongs_to, index: true
    add_reference :graffitis, :artist, index: true
  end
end
