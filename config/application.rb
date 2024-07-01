require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module HelixHome
  class Application < Rails::Application
    config.load_defaults 6.1

    # Configuration for CORS
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'  # frontend URL
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head],
          credentials: true
      end
    end
  end
end
