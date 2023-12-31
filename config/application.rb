require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0 
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo' # engines and railties goes here.
    config.active_storage.variant_processor = :mini_magick
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.generators do |g|
      g.styleshrrts false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
