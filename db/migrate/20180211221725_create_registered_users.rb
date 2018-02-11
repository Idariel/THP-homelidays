class CreateRegisteredUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :registered_users do |t|
      t.string :name
      t.string :firstname
      t.string :address1
      t.string :address2
      t.integer :zip_code
      t.string :city_name
      t.string :area_code

      t.timestamps
    end
  end
end
