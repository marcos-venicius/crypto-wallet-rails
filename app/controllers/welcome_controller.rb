class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    return unless params.key? :name

    @name = format_name params[:name]
  end
end
