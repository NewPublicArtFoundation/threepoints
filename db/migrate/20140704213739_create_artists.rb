class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.datetime :began_at, :include_blank => true

      t.timestamps
    end
  end
end
