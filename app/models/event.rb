class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  has_many :bookings
  has_many :attendees, through: :bookings, source: :user
end
