class CreateDeviceWarrenties < ActiveRecord::Migration[7.0]
  def change
    create_table :device_warrenties do |t|
      t.string :duration

      t.timestamps
    end
  end
end
