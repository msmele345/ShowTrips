class Concert < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :attendee

  def grab_ids
    self.attendees.pluck(:id)
  end

  def upcoming?
    self.date > DateTime.now
  end

##FOR LATER DATETIME
  # def todays_event?
  #   self.starts_ > Time.zone.now.beginning_of_day && self.starts_at < Time.zone.now.end_of_day
  # end
end
