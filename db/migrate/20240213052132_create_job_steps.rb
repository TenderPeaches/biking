class CreateJobSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :job_steps do |t|
      t.string :label, comment: "1. Do X"
      t.integer :number, comment: "Sequence integer to be able to list steps in order"
      t.string :description, comment: "What the step actually entails"
      t.references :job, null: false, foreign_key: true, comment: "Job that this step is for"

      t.timestamps
    end
  end
end
