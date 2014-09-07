class CreateInstagramArts < ActiveRecord::Migration
  def change
    create_table :instagram_arts do |t|
      t.text :everything
      t.string :image_url
      t.integer :date_found
      t.text :tags
      t.text :caption
      t.string :user_name
      t.integer :user_id
      t.string :user_avatar
      t.string :location_name
      t.float :location_lon
      t.float :location_lat
      t.integer :location_id

      t.timestamps
    end
  end
end
