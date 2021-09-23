require 'cucumber'
require 'dotenv/load'
require 'factory_bot'
require 'faker'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'json'
require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'report_builder'
require 'rspec'
require 'json_matchers/rspec'

require_relative 'helper'
require_relative 'data/models/booking_model'

World(Helper)
World(FactoryBot::Syntax::Methods)

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/environments/#{ENV['ENV_TYPE']}.yml"))
JsonMatchers.schema_root = File.join(Dir.pwd, 'features/support/data/schemas')

DATA =
  if ENV['DEV']
    YAML.load_file('features/support/config/environments/dev.yml')
  elsif ENV['QA']
    YAML.load_file('features/support/config/environments/qa.yml')
  elsif ENV['HML']
    YAML.load_file('features/support/config/environments/hml.yml')
  else
    YAML.load_file('features/support/config/environments/dev.yml')
  end
