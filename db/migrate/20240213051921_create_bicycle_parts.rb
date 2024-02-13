class CreateBicycleParts < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_parts do |t|
      t.string :name
      t.string :description
      t.references :bicycle_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
