class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.references :device_warrenty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
