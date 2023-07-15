class Coin < ApplicationRecord
  validates :description, presence: true, length: { minimum: 3, maximum: 200, too_short:  "description is too short", too_long: "description is too long" }
  validates :url_image, presence: true
  validates :acronym, presence: true, format: { with: /[A-Z-0-9]/, message: "invalid format" }
end
