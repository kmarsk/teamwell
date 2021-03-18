class Activity < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :schedules, dependent: :destroy
  has_many :bookings, through: :schedules
  has_many :favorites, dependent: :destroy
end
