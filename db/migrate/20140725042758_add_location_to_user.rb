class AddLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :title, :string
    add_column :users, :oneliner, :string
  end
end
