class CreateCollars < ActiveRecord::Migration[5.0]
  def change
    create_table :collars do |t|
      t.string :collar_name
      t.string :collar_image_url

      t.timestamps

    end
  end
end
