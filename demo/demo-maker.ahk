; --------------------------------------------------
; Helper script for generating the demo screencast
; NOTE: Run from the project root directory
; --------------------------------------------------
#SingleInstance Force
SetkeyDelay 0, 50

Commands := []
Index := 1

Commands.Push("cd demo {;} rm cast.json {;} rm -rf sample {;} cp -r ../spec/fixtures/sample .")
Commands.Push("asciinema rec cast.json")
Commands.Push("cd sample")
Commands.Push("tree")
Commands.Push("recode Person to Goose in yml rb")
Commands.Push("recode Person to Goose in yml --apply")
Commands.Push("recode Person to Goose in rb --apply")
Commands.Push("tree")
Commands.Push("cat geese_controller.rb")
Commands.Push("cat goose/geese.yml")
Commands.Push("recode Goose to Person in yml rb --prompt")
Commands.Push("exit")
Commands.Push("cat cast.json | svg-term --out cast.svg --window")

F12::
  Send % Commands[Index]
  Index := Index + 1
return

^F12::
  Reload
return

^x::
  ExitApp
return
