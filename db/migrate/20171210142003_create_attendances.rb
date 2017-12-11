class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :attendee
      t.references :concert


      t.timestamps
    end
  end
end
