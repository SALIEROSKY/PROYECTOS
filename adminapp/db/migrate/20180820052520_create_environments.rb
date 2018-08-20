class CreateEnvironments < ActiveRecord::Migration[5.2]
  def change
    create_table :environments do |t|
      t.string :nam_
      t.string :environment
      t.string :desc_
      t.string :environment
      t.integer :id_multimedia
      t.integer :id_user

      t.timestamps
    end
  end
end
