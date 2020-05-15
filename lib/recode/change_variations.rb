module Recode
  module ChangeVariations
    def change_variations(old_string, new_string)
      result = []
      result << [old_string.pluralize.downcase, new_string.pluralize.downcase]
      result << [old_string.pluralize, new_string.pluralize]
      result << [old_string.downcase, new_string.downcase]
      result << [old_string, new_string]
      result.uniq
    end
  end
end