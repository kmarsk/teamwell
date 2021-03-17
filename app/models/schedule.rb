class Schedule < ApplicationRecord
  belongs_to :activity
  has_many :bookings, dependent: :destroy

  def date_formatted
    "#{date.strftime("%a %d-%m-%Y")} #{time.strftime("%l:%M")}"
  end
end
