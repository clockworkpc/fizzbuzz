# frozen_string_literal: true

require 'bundler/setup'
require 'facets'
require 'json'
require 'pry'
require 'time'

require 'cpc/codewars/drying_potatoes'

require 'cpc/util/api_util'
require 'cpc/util/case_util'
require 'cpc/util/collection_util'
require 'cpc/util/file_parse_util'
require 'cpc/util/generate_data_util'
require 'cpc/util/maths_util'
require 'cpc/util/pleasing_print_util'
require 'cpc/util/string_util'
require 'cpc/util/time_stamp_util'
require 'cpc/util/util'

require 'fizz_buzz/set_up_project'
require 'fizz_buzz/demo'
require 'fizz_buzz'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
