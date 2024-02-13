class CreateBicycleParts < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_parts do |t|
      t.string :name, null: false, comment: "How this part is commonly referred to"
      t.string :description, comment: "What this part accomplishes for the bicycle"
      t.references :bicycle_system, null: false, foreign_key: true, comment: "What system this part is a part of"

      t.timestamps
    end
  end
end
