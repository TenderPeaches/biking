class CreateBicycleSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycle_systems do |t|

      t.timestamps
    end
  end
end
