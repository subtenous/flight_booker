class Airport < ApplicationRecord
  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_airport_id"
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_airport_id"

  validates :code, presence: true, uniqueness: true, length: { is: 3 }
  validates :name, presence: true
end
