module Recode
  module Handler
    class Base
      include Diffing
      include Colsole

      def show_rename(source:, target:)
        say "\nm`" + ("_" * terminal_width) + '`'
        say "m`rename:`"
        puts diff source, target
      end

      def show_edit(file:, before:, after:)
        say "\nb`" + ("_" * terminal_width) + '`'
        say "b`edit: #{file}`"
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