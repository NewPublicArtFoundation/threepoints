class AddNameToGraffiti < ActiveRecord::Migration
  def change
    add_column :graffitis, :name, :string
  end
end
