require 'well/component'
require 'well/config'

module Well
  class Element
    include Component

    def initialize(base, tag_name, identifier, opts = {})
      @base, @tag_name, @identifier, @opts = base, tag_name, identifier, opts
    end

    def base
      @base
    end

    def compiled_identifier
      ids = [base.compiled_identifier]
      ids << Well.config.element_separator << @identifier
      ids << Well.config.modifier_separator << modifier if modifier
      ids.join
    end
  end
end
