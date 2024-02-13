class CreateBicyclePartTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_part_types do |t|
      t.string :name
      t.string :description
      t.references :bicycle_part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
