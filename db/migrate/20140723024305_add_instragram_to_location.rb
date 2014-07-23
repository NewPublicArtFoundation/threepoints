class AddInstragramToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :instagram, :integer
  end
end
