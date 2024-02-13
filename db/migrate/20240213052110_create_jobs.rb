class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :label, null: false, comment: "Name of the process/job"

      t.timestamps
    end
  end
end
