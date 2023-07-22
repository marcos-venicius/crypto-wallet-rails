# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    cookies[:lang] = params[:lang] || cookies[:lang] || I18n.default_locale

    locale = cookies[:lang]

    return I18n.with_locale(I18n.default_locale, &action) unless I18n.available_locales.include?(locale.to_sym)

    I18n.with_locale(locale, &action)
  end
end
