require 'recode/handler/prompt'

action :debug do
  path = "./sample"
  extensions = ["rb", "slim", "scss", "coffee"]
  old_string, new_string = %w[Schedule Task]
  # old_string, new_string = %w[Task Schedule]

  runner = Recode::Runner.new path: path, extensions: extensions, 
    old_string: old_string, new_string: new_string

  runner.execute Recode::Handler::Prompt.new
end
