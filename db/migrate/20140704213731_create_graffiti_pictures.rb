class CreateGraffitiPictures < ActiveRecord::Migration
  def change
    create_table :graffiti_pictures do |t|
      t.references :graffiti, index: true
      t.string :image_url
      t.text :image_description

      t.timestamps
    end
  end
end
