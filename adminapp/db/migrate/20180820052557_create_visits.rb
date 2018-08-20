class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :nam_visit
      t.string :desc_
      t.string :visit
      t.integer :id_recycling_center
      t.integer :id_user

      t.timestamps
    end
  end
end
