module ApplicationHelper
  def today_br
    date_us = Date.today

    date_br(date_us)
  end

  def date_br(date_us)
    date_us.strftime("%d/%m/%Y").chomp
  end

  def application_name
    "Crypto Wallet"
  end

  def show_flash(message, type)
    unless message.nil?
      return content_tag(:p, message, class: "flash #{type}")
    end
  end
end
