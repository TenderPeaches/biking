class CreateJobParts < ActiveRecord::Migration[7.0]
  def change
    create_table :job_parts do |t|
      t.references :job, null: false, foreign_key: true
      t.references :bicycle_part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
