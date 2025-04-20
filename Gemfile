source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.3'

# Rails
gem 'rails', '~> 7.2'
gem 'bootsnap', '>= 1.18.4', require: false

# Postgres
gem 'pg', '~> 1.5'

# Server
gem 'puma', '~> 6.0'

# Use Redis for Action Cable
gem 'redis', '~> 5.4'

# CSS / Javascript
gem 'tailwindcss-rails', "~> 3.3.1"
gem 'importmap-rails'
gem 'hotwire-rails'

# ActiveStorage
gem "aws-sdk-s3", require: false

# Spina
gem 'spina', '~> 2.19.0'

source "http://gems.spinacms.com" do
  gem 'spina-pro', '~> 0.12.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
end

