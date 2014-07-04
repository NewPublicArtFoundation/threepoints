class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :city_name
      t.text :country_name
      t.text :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
