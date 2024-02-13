class CreateJobStepConsiderations < ActiveRecord::Migration[7.0]
  def change
    create_table :job_step_considerations do |t|
      t.string :condition, comment: "If (...)"
      t.string :action, comment: "... then do (...)"

      t.timestamps
    end
  end
end
