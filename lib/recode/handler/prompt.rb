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
        answer = $stdin.getch.downcase
        
        if answer == 'q' or answer == "\u0003"
          say "b`Quit`"
          raise Recode::Abort
        elsif answer == 'n'
          say "r`No`"
          false
        else
          say "g`Yes`"
          true
        end
      end

    end
  end
end