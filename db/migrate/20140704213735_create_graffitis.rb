class CreateGraffitis < ActiveRecord::Migration
  def change
    create_table :graffitis do |t|
      t.text :description
      t.belongs_to :location
      t.belongs_to :artist
      t.datetime :discovered_at, :include_blank => true
      t.datetime :painted_at, :include_blank => true
      t.datetime :buffed_at, :include_blank => true
      t.references :locations, index: true
      t.references :artists, index: true
      t.timestamps
    end
  end
end
