class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :concert
end
