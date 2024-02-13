class CreateBicycleSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_systems do |t|
      t.string :name, null: false, comment: "Common name used to refer to this system"
      t.string :description, comment: "Description of what this system does, what kind of parts it involves"

      t.timestamps
    end
  end
end
