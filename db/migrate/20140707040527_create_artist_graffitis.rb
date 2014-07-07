class CreateArtistGraffitis < ActiveRecord::Migration
  def change
    create_table :artist_graffitis do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :graffiti, index: true

      t.timestamps
    end
  end
end
