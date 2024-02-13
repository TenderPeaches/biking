class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :specification
      t.string :identifier
      t.references :tool_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
