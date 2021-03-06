require File.expand_path('../boot', __FILE__)
require File.expand_path('../csrf_protection', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MiniChat
  class Application < Rails::Application
    config.middleware.delete Rack::Lock
    config.middleware.use FayeRails::Middleware, mount: '/faye', :timeout => 25
    # config.middleware.use FayeRails::Middleware, extensions: [CsrfProtection.new], mount: '/faye', :timeout => 25
    
    config.active_record.raise_in_transactional_callbacks = true
  end
end
