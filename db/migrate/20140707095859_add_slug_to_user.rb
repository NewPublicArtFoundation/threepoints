class AddSlugToUser < ActiveRecord::Migration
  def change
    add_column :users, :user, :string
    add_column :users, :slug, :string
    add_index :users, :slug, unique: true
  end
end
