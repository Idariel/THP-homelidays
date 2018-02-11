class CreateRentedPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :rented_places do |t|
      t.string :address_place1
      t.string :address_place2
      t.integer :zip_code_place
      t.string :city_name_place
      t.string :area_code_place
      t.string :description
      t.integer :nb_of_room
      t.string :facilities
      t.string :other_informations

      t.timestamps
    end
  end
end
