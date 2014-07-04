class CreateGraffitis < ActiveRecord::Migration
  def change
    create_table :graffitis do |t|
      t.text :description
      t.datetime :discovered_at
      t.datetime :painted_at
      t.datetime :buffed_at

      t.timestamps
    end
  end
end
