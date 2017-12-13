class Itinerary < ApplicationRecord
  belongs_to :attendee, class_name: "User", optional: true
  belongs_to :concert, optional: true
  has_many :ratings
end
