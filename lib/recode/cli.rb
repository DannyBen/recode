require 'mister_bin'
require 'recode'
require 'recode/command'

module Recode
  class CLI
    def self.router
      router = MisterBin::Runner.new version: VERSION
      router.route_all to: Command
      router
    end
  end
end
