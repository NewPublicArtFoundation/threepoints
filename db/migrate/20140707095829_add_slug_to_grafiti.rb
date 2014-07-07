class AddSlugToGrafiti < ActiveRecord::Migration
  def change
    add_column :grafitis, :graffiti, :string
    add_column :grafitis, :slug, :string
    add_index :grafitis, :slug, unique: true
  end
end
