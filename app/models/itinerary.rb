class Itinerary < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  has_many :ratings
end
