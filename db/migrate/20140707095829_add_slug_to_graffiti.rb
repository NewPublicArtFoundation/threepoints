class AddSlugToGraffiti < ActiveRecord::Migration
  def change
    add_column :graffitis, :slug, :string
    add_index :graffitis, :slug, unique: true
  end
end
