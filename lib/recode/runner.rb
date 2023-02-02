module Recode
  class Runner
    include Colsole
    include ChangeVariations

    attr_accessor :path, :extensions, :old_string, :new_string, :handler

    def initialize(path: nil, extensions: nil, old_string: nil, new_string: nil)
      @path = path
      @extensions = extensions
      @old_string = old_string
      @new_string = new_string
    end

    def execute(handler)
      @handler = handler
      refactor_filenames
      refactor_contents
    end

  private

    def refactor_filenames
      files.each { |file| refactor_filename file }
      refresh_files
    end

    def refactor_contents
      files.each { |file| refactor_content file }
    end

    def refactor_filename(file)
      target = apply_changes file
      payload = { source: file, target: target }
      handler.rename(**payload) unless target == file
    end

    def refactor_content(file)
      before = File.read file
      after = apply_changes before
      payload = { file: file, before: before, after: after }
      handler.edit(**payload) unless before == after
    end

    def apply_changes(string)
      result = string.dup
      changes.each { |from, to| result.gsub!(from, to) }
      result
    end

    def changes
      @changes ||= change_variations old_string, new_string
    end

    def files
      @files ||= Dir["#{path}/**/*.{#{extensions.join ','}}"].sort
    end

    def refresh_files
      @files = nil
    end
  end
end
