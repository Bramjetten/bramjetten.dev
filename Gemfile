source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Rails
gem 'rails', '~> 6.1.1'
gem 'bootsnap', '>= 1.4.4', require: false

# Postgres
gem 'pg', '~> 1.1'

# Server
gem 'puma', '~> 5.0'

# CSS / Javascript
gem 'tailwindcss-rails'
gem 'importmap-rails'
gem 'hotwire-rails'

# ActiveStorage
gem "aws-sdk-s3", require: false

# Spina
gem 'spina', '~> 2.5.0'

source "http://gems.spinacms.com" do
  gem 'spina-pro', '~> 0.4.1'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
end


# Use Redis for Action Cable
gem 'redis', '~> 4.0'
