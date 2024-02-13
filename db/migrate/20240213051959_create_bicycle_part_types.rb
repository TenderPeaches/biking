class CreateBicyclePartTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_part_types do |t|
      t.string :name, null: false, comment: "How this particular part type is referred to, to differentiate it from the generic type"
      t.string :description, comment: "How this part type differs from the generic assumption"
      t.references :bicycle_part, null: false, foreign_key: true, comment: "Generic part that this type is a subtype of"

      t.timestamps
    end
  end
end
