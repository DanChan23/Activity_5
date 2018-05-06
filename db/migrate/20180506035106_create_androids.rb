class CreateAndroids < ActiveRecord::Migration[5.2]
  def change
    create_table :androids do |t|
      t.string :name
      t.string :brand
      t.text :year_released
      t.string :camera
      t.string :mpixels
      t.string :internal_storage
      t.integer :num_of_sim_slots
      t.string :screensize
      t.string :operating_system
      t.integer :num_of_stock

      t.timestamps
    end
  end
end
