class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 50 }, allow_blank: true

  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
end
