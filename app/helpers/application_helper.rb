module ApplicationHelper
  def today_br
    date_us = Date.today

    date_br(date_us)
  end

  def date_br(date_us)
    date_us.strftime('%d/%m/%Y').chomp
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

    content_tag(:p, "development", class: "dev_banner")
  end
end
