class CreateBicyclePartModels < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_part_models do |t|
      t.string :name, comment: "Specific part name"
      t.references :brand, null: false, foreign_key: true, comment: "Manufacturing brand"

      t.timestamps
    end
  end
end
