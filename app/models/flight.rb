class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings

  validates :start_datetime, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validate :airpots_must_be_different

  private

  def airpots_must_be_different
    return if departure_airport_id.blank? || arrival_airport_id.blank?

    if departure_airport_id == arrival_airport_id
      errors.add(:arrival_airport, "must be different from departure airport")
    end
  end
end
