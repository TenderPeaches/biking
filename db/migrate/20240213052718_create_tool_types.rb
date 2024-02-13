class CreateToolTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tool_types do |t|
      t.string :label, comment: "Generic label for this type of tool"
      t.string :description, comment: "What this tool is and what the kind of tasks it can perform"

      t.timestamps
    end
  end
end
