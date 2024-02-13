class CreateJobStepTools < ActiveRecord::Migration[7.0]
  def change
    create_table :job_step_tools do |t|
      t.references :tool, null: false, foreign_key: true, comment: "Tool used for this step"
      t.references :job_step, null: false, foreign_key: true, comment: "Step this tool is used for"

      t.timestamps
    end
  end
end
