class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :specification, comment: "What makes this tool non-generic, for instance the [14mm] part of a '14mm hex wrench'"
      t.string :identifier, comment: "Brand-specific model identifier, like the Park Tools codes"
      t.references :tool_type, null: false, foreign_key: true, comment: "What this tool is: a hex wrench, a screwdriver, etc."

      t.timestamps
    end
  end
end
