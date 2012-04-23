source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# template engine
gem 'haml'
gem 'haml-rails'

# authorization
gem 'cancan'

# upload
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'

  # jquery-t hasznalunk coffescript helyett
  # gem 'coffee-rails', '~> 3.2.1'

  unless ENV['OS'] && ENV['OS'].downcase.include?("windows")
    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'therubyracer'
  end

  gem 'uglifier', '>= 1.0.3'

  # be quick and be nice
  gem 'bootstrap-sass', '~> 2.0.2'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
