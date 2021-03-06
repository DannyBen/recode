lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'recode/version'

Gem::Specification.new do |s|
  s.name        = 'recode'
  s.version     = Recode::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Command line utility for refactoring code"
  s.description = "Command line utility for refactoring code"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.executables = ['recode']
  s.homepage    = 'https://github.com/dannyben/recode'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"

  s.add_runtime_dependency 'mister_bin', '~> 0.7'
  s.add_runtime_dependency 'colsole', '~> 0.7'
  s.add_runtime_dependency 'diffy', '~> 3.3'
  s.add_runtime_dependency 'strings-inflection', '~> 0.1'
end
