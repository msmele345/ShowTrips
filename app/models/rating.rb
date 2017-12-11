class Rating < ApplicationRecord
  belongs_to :concert, optional: true
  belongs_to :itinerary, optional: true
end
