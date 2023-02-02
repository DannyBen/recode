require 'mister_bin'
require 'recode'
require 'recode/command'
require 'recode/version'

module Recode
  class CLI
    def self.router
      MisterBin::Runner.new version: VERSION, handler: Command
    end
  end
end
