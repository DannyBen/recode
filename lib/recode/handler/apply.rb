module Recode
  module Handler
    class Apply < Output
      def rename(source:, target:)
        super
        rename_file source, target
      end

      def edit(file:, before:, after:)
        super
        save_file file, after
      end
    end
  end
end
