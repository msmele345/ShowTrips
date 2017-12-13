class Itinerary < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :concert
  has_many :ratings
end
