class CreateTransportMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :transport_materials do |t|
      t.string :nam_transport_material
      t.string :desc_transport_material
      t.date :date_transport_material
      t.integer :id_material
      t.integer :id_recycling_center

      t.timestamps
    end
  end
end
