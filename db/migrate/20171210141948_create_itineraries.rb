class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.string :hotel
      t.date :arrival_date
      t.date :return_date
      t.string :flight_info
      t.references :user


      t.timestamps
    end
  end
end
