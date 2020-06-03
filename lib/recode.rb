require 'diffy'
require 'colsole'
require 'strings-inflection'
require 'strings/inflection/extensions'

require 'recode/refinements'
require 'recode/exceptions'
require 'recode/diffing'
require 'recode/handler/base'
require 'recode/handler/output'
require 'recode/handler/apply'
require 'recode/handler/prompt'
require 'recode/change_variations'
require 'recode/runner'

require 'byebug' if ENV['BYEBUG']
