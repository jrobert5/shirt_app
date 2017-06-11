class CreateCuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :cuffs do |t|
      t.string :cuff_name
      t.string :cuff_image_url

      t.timestamps

    end
  end
end
