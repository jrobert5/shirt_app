class CreateCustomerMeasurements < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_measurements do |t|
      t.integer :customer_id
      t.float :neck
      t.float :chest
      t.float :stomach
      t.float :seat
      t.float :shirt_length
      t.float :shoulder_width
      t.float :right_sleeve
      t.float :left_sleeve
      t.float :right_bicep
      t.string :left_bicep
      t.float :right_cuff
      t.float :left_cuff

      t.timestamps

    end
  end
end
