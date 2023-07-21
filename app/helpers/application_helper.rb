# frozen_string_literal: true

# Application helper
module ApplicationHelper
  def current_locale
    I18n.locale == :en ? 'US' : 'PT-BR'
  end

  def application_name
    'Crypto Wallet'
  end

  def show_flash(message, type)
    return if message.nil?

    content_tag(:p, message, class: "flash #{type}")
  end

  def development_banner
    return unless Rails.env.development?

    content_tag(:p, 'development', class: 'dev_banner')
  end
end
