class AddSocialMediaToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :twitter, :string
    add_column :locations, :facebook, :string
    add_column :locations, :instagram, :string
    add_column :locations, :website, :string
  end
end
