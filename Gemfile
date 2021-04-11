source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Rails
gem 'rails', '~> 6.1.1'
gem 'bootsnap', '>= 1.4.4', require: false

# Postgres
gem 'pg', '~> 1.1'

# Server
gem 'puma', '~> 5.0'

# CSS / Javascript
gem 'tailwindcss-rails'
gem 'hotwire-rails'

# ActiveStorage
gem "aws-sdk-s3", require: false

# Spina
gem 'spina', github: 'Bramjetten/Spina', branch: 'hotwire'
# gem 'spina', path: '~/apps/spina'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end
