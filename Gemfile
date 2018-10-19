source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'

#--- DB
gem 'mysql2'
gem 'redis', '~> 4.0'
gem 'redis-rails'
gem 'redis-objects'
gem 'redis-namespace'

#--- js&css
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'  # JavaScriptの圧縮
gem 'jbuilder', '~> 2.5'  # JSONレスポンスを効率的に書ける

gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass' 

#--- view
gem 'slim-rails' # HTMLを簡潔に書ける
gem 'rubocop' # コードスタイルを統一に書ける

#--- email
gem 'letter_opener'
gem 'letter_opener_web'

#--- devise
gem 'devise', '~>4.4', '>=4.4.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Turbolinks makes navigating your web application faster. 
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
