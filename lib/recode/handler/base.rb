require 'recode/diffing'

module Recode
  module Handler
    class Base
      include Diffing

      def show_rename(source:, target:)
        say "\n!txtblu!" + ("_" * terminal_width)
        say "!txtblu!rename:"
        puts diff source, target
      end

      def show_edit(file:, before:, after:)
        say "\n!txtblu!" + ("_" * terminal_width)
        say "!txtblu!edit: !txtrst!#{file}"
        puts diff before, after
      end

      def rename_file(source, target)
        FileUtils.mkdir_p File.dirname target
        FileUtils.mv source, target
      end

      def save_file(file, content)
        File.write file, content
      end
    end
  end
end