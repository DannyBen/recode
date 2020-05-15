module Recode
  module Diffing
    def diff(source, target)
      diffy.new "#{source}\n", "#{target}\n", context: 1
    end

  private

    def diffy
      @diffy ||= diffy!
    end

    def diffy!
      Diffy::Diff.default_format = :color
      Diffy::Diff
    end
  end

end