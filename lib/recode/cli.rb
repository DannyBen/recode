require 'mister_bin'
require 'recode'
require 'recode/command'

module Recode
  class CLI
    def self.router
      MisterBin::Runner.new version: VERSION, handler: Command
    end
  end
end
