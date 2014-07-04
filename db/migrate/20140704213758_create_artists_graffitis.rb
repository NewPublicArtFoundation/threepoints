class CreateArtistsGraffitis < ActiveRecord::Migration
  def change
    create_table :artists_graffitis do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :graffiti, index: true
    end
  end
end
