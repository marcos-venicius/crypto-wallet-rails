module WelcomeHelper
  def format_name(name = '')
    name.strip.camelize
  end
end
