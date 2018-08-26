class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name_user
      t.string :lastname_user
      t.string :tel_user
      t.string :address_user
      t.string :identification_user
      t.string :email_user
      t.string :password_digest
      t.string :age
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
