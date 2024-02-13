class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name, comment: "Brand name"
      t.string :description, comment: "Optional feedback about the brand"

      t.timestamps
    end
  end
end
