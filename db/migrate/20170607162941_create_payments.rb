class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :invoice_id
      t.string :payment_type
      t.float :amount

      t.timestamps

    end
  end
end
