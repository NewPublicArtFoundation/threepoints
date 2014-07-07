class AddSlugToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :artist, :string
    add_column :artists, :slug, :string
    add_index :artists, :slug, unique: true
  end
end
