require 'recode/handler/base'

module Recode
  module Handler
    class Output < Base
      def rename(source:, target:)
        show_rename source: source, target: target
      end

      def edit(file:, before:, after:)
        show_edit file: file, before: before, after: after
      end
    end
  end
end