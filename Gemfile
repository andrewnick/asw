source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'

gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'devise'


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem "better_errors"
  gem 'quiet_assets'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'railroady'
  gem 'guard'
  gem 'guard-livereload', '~> 2.4', require: false
  gem 'guard-rspec'
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara'
  gem 'factory_girl_rails', "~> 4.0"
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end

group :production do
	gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby "2.3.1"

