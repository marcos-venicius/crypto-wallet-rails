# frozen_string_literal: true

require 'uri'

# Attribute to validate URL
class HttpUrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return unless value.present?

    uri = URI.parse(value)

    return if uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)

    record.errors.add(attribute, options[:message] || 'invalid url')
  end
end
