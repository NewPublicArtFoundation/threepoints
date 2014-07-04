class CreateArtistsLocations < ActiveRecord::Migration
  def change
    create_table :artists_locations do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :location, index: true
    end
  end
end
