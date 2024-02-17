class CreateBicyclePartTypeSpecs < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_part_type_specs do |t|
      t.string :label
      t.string :description
      t.references :bicycle_part_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
