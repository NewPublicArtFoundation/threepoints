class AddSelectionToComments < ActiveRecord::Migration
  def change
    add_column :comments, :inputType, :string
  end
end
