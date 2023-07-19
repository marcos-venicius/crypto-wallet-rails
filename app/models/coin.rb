# frozen_string_literal: true

# Coin model
class Coin < ApplicationRecord
  belongs_to :mining_type

  validates :description, presence: true, length: {
    minimum: 3,
    maximum: 200,
    too_short: 'description is too short',
    too_long: 'description is too long'
  }
  validates :url_image, presence: true, http_url: { message: 'invalid URL' }
  validates :acronym, presence: true, format: { with: /[A-Z0-9]/, message: 'invalid acronym format' }
end
