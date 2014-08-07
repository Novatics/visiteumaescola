require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(:default, Rails.env)
end

module RailsHerokuBootstrap
  class Application < Rails::Application
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true
    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    #config.assets.paths << "#{Rails}/vendor/spacelab-theme"
    config.time_zone = 'Brasilia'
  end
end
