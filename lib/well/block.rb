require 'well/component'
require 'well/config'

module Well
  # Class representing a BEM block component.
  class Block
    include Component

    # @param [Symbol] tag_name The name of the HTML element to build
    # @param [String] identifier The main CSS class which represents
    #   the role of the BEM block
    def initialize(tag_name, identifier, opts = {})
      @tag_name, @identifier, @opts = tag_name, identifier, opts
    end

    # Since the block is the base element in BEM, this can only return
    #   self.
    # @return [Block]
    def base
      self
    end

    # @return [String]
    def compiled_identifier
      identifier
    end
  end
end
