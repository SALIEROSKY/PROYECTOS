class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :nam_category
      t.string :desc_category
      t.integer :id_material
      t.integer :id_multimedia

      t.timestamps
    end
  end
end
