class CreateFabrics < ActiveRecord::Migration[5.0]
  def change
    create_table :fabrics do |t|
      t.string :fabric_code
      t.string :fabric_desciption
      t.string :fabric_image_url

      t.timestamps

    end
  end
end
