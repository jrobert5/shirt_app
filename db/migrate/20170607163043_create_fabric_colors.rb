class CreateFabricColors < ActiveRecord::Migration[5.0]
  def change
    create_table :fabric_colors do |t|
      t.integer :fabric_id
      t.integer :color_id

      t.timestamps

    end
  end
end
