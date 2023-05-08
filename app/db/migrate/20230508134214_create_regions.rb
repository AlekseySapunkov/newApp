class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :country
      t.integer :cities

      t.timestamps
    end
  end
end
