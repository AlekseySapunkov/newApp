class CreateCampings < ActiveRecord::Migration[7.0]
  def change
    create_table :campings do |t|
      t.string :name
      t.string :region
      t.string :city
      t.string :definition

      t.timestamps
    end
  end
end
