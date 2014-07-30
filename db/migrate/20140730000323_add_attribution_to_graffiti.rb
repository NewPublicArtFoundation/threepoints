class AddAttributionToGraffiti < ActiveRecord::Migration
  def change
    add_column :graffitis, :attribution, :string
  end
end
