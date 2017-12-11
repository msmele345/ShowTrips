class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :concert, foreign_key: true
      t.references :itinerary, foreign_key: true



      t.timestamps
    end
  end
end
