class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name_image
      t.string :url_image

      t.timestamps
    end
  end
end
