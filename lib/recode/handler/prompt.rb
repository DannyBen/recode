require 'io/console'

module Recode
  module Handler
    class Prompt < Output
      def rename(source:, target:)
        super
        rename_file source, target if apply?
      end

      def edit(file:, before:, after:)
        super
        save_file file, after if apply?
      end

    private

      def apply?
        say "\nApply? gu`Y`es, gu`n`o, gu`q`uit : "

        case $stdin.getch.downcase
        when 'q', "\u0003"
          say 'b`Quit`'
          raise Recode::Abort
        when 'y'
          say 'g`Yes`'
          true
        else
          say 'r`No`'
          false
        end
      end
    end
  end
end
