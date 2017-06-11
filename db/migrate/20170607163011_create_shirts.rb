class CreateShirts < ActiveRecord::Migration[5.0]
  def change
    create_table :shirts do |t|
      t.integer :invoice_id
      t.integer :fabric_id
      t.integer :collar_id
      t.integer :cuff_id

      t.timestamps

    end
  end
end
