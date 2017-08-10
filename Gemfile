source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails'
gem 'pg'
gem 'puma'
gem 'slack-notifier'
gem 'sendgrid'

gem 'active_model_serializers'
gem 'authority'
gem 'rack-cors'

gem 'exception_notification'
gem 'slack-notifier'
gem 'redis'
gem 'redis-rails'
gem 'figaro'
gem 'bullet'

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'faker'
end

group :development do
  gem 'listen'
  gem 'rails-erd'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'annotate'
  gem 'letter_opener'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'simplecov'
  gem 'codeclimate-test-reporter'
  gem 'rubycritic'
  gem 'brakeman', require: false
  gem 'rubocop', require: false
  gem 'overcommit', require: false
  gem 'nexmo'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
