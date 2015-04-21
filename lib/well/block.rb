require 'well/component'
require 'well/config'

module Well
  class Block
    include Component

    def initialize(tag_name, identifier, opts = {})
      @tag_name, @identifier, @opts = tag_name, identifier, opts
    end

    def base
      self
    end

    def compiled_identifier
      identifier
    end
  end
end
