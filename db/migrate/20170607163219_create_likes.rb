class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :customer_id
      t.integer :fabric_id

      t.timestamps

    end
  end
end
