require 'io/console'
require 'recode/handler/output'

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
        say "\nApply? !undgrn!Y!txtrst!es, !undgrn!n!txtrst!o, !undgrn!q!txtrst!uit : "
        answer = $stdin.getch.downcase
        
        if answer == 'q' or answer == "\u0003"
          say "!txtblu!Quit"
          raise "Abort"
        elsif answer == 'n'
          say "!txtred!No"
          false
        else
          say "!txtgrn!Yes"
          true
        end
      end

      def prompt
        @prompt ||= TTY::Prompt.new
      end

    end
  end
end