class CreateUses < ActiveRecord::Migration[5.2]
  def change
    create_table :uses do |t|
      t.string :nam_use
      t.string :desc_
      t.string :use
      t.integer :id_material
      t.integer :id_user

      t.timestamps
    end
  end
end
