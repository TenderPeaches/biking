class CreateJobSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :job_steps do |t|
      t.string :label
      t.integer :number
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
