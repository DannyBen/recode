module Recode
  module ChangeVariations
    using Strings::Inflection::Extensions
    using Recode::Refinements

    def change_variations(old_string, new_string)
      result = []
      result << [old_string.pluralize.underscore, new_string.pluralize.underscore]
      result << [old_string.pluralize, new_string.pluralize]
      result << [old_string.underscore, new_string.underscore]
      result << [old_string, new_string]
      result.uniq
    end
  end
end
