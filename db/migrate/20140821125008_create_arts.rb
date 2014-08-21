class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :description
      t.integer :location_id
      t.integer :artist_id
      t.string :slug
      t.string :name

      t.timestamps
    end
  end
end
