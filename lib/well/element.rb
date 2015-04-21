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
      ids = [base.identifier]
      ids << Well.config.element_separator << identifier
      ids.join
    end
  end
end
