# frozen_string_literal: true

source 'https://rubygems.org'
gemspec
gem 'facets'

gem 'rubocop', require: false
gem 'rubocop-performance', require: false
gem 'rubocop-rspec', require: false

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ /mingw|mswin|java/ } do
  gem 'tzinfo', '~> 1.2'
  gem 'tzinfo-data'
end

gem 'did_you_mean'

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.1', install_if: Gem.win_platform?

# gem 'cpc', git: 'https://github.com/clockworkpc/cpc-ruby.git'

group :development do
  gem 'guard', require: false
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-shell'
  gem 'rb-fsevent', '~> 0.9'
  # gem 'rspec'
end
