require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HangerTagServer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.

    config.time_zone = 'Seoul'
    config.encoding = "utf-8"
    config.web_console.whitelisted_ips = '221.154.45.30' 
    config.web_console.whitelisted_ips = '163.239.200.133' 
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use ActionDispatch::Flash
    # de-activate tolken auth
    config.action_controller.allow_forgery_protection = false
  end
end
