source "https://rubygems.org"

ruby "3.1.0"

gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use the PostgreSQL as the database for Active Record
gem "pg", "~> 1.2"

# Use the Puma web server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire's SPA-like page accelerator
gem "turbo-rails"

# Hotwire's modest JavaScript framework
gem "stimulus-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis
# gem "kredis"

# Use Active Model has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants
# gem "image_processing", "~> 1.2"

gem 'rack-cors', require: 'rack/cors'


group :development, :test do
  gem "debug", platforms: %i[mri mswin mswin64 mingw x64_mingw]
end

group :development do
  gem "web-console"

  # Add speed badges
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end