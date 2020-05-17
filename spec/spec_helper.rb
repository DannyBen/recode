require 'simplecov'
SimpleCov.start

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

include Recode
require 'recode/cli'
require_relative 'spec_mixin'

system 'mkdir -p spec/tmp'

ENV['COLUMNS'] = '80'
ENV['LINES'] = '24'

RSpec.configure do |c|
  c.include SpecMixin
  c.fixtures_path = File.expand_path 'approvals', __dir__
  c.strip_ansi_escape = true
end
