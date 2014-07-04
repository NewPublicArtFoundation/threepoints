class CreateGraffitisLocations < ActiveRecord::Migration
  def change
    create_table :graffitis_locations do |t|
      t.belongs_to :graffiti, index: true
      t.belongs_to :location, index: true
    end
  end
end
