class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :owner
      t.string :is_active

      t.timestamps
    end
  end
end
