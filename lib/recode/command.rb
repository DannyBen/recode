module Recode
  class Command < MisterBin::Command
    help "Code Refactoring Utility"

    usage "recode OLD [to] NEW [in] EXTENSIONS... [options]"
    usage "recode (-h|--help)"

    option "-a --apply", "Apply changes"
    option "-p --prompt", "Apply changes interactively "

    param "OLD", "Old string, singular and capitalized"
    param "NEW", "New string, singular and capitalized"
    param "EXTENSIONS", "Space delimited file extensions"

    example "recode refactor Member User rb"
    example "recode refactor Member to User in rb js"
    example "recode refactor Member to User in rb js --apply"
    example "recode refactor Member to User in rb js -p"

    def run
      runner = Runner.new path: path, 
        extensions: extensions, 
        old_string: old_string, 
        new_string: new_string

      runner.execute handler
    end

  private

    def handler
      if args['--prompt']
        Handler::Prompt.new
      elsif args['--apply']
        Handler::Apply.new
      else
        Handler::Output.new
      end
    end

    def path
      "."
    end
    
    def extensions
      args['EXTENSIONS']
    end

    def old_string
      args['OLD']
    end

    def new_string
      args['NEW']
    end


  end
end
