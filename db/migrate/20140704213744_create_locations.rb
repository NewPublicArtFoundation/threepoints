class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :address
      t.string :name
      t.float :longitude
      t.float :latitude
      t.datetime :discovered_at, :include_blank => true
      t.datetime :demolished_at, :include_blank => true

      t.timestamps
    end
  end
end
