class User < ApplicationRecord
  ROLE = ["Employer", "Employee", "Trainer"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :company, optional: true
  has_many :companies, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :favorites, dependent: :destroy


  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
