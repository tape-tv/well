require 'well/component'
require 'well/config'

module Well
  # Class representing BEM element component.
  class Element
    include Component

    # @param [Block,Element] base The base element used as evaluation context
    # @param [Symbol] tag_name The name of the HTML element to build
    # @param [String] identifier The main CSS class which represents
    #   the role of the BEM block
    # @param [Hash] opts
    def initialize(base, tag_name, identifier, opts = {})
      @base, @tag_name, @identifier, @opts = base, tag_name, identifier, opts
    end

    # The base evaludation context for a BEM element can be either a {Block}
    # or an {Element}.
    # @return [Block,Element]
    def base
      @base
    end

    # Builds CSS class representing BEM element component.
    # @return [String]
    def compiled_identifier
      ids = [base.identifier]
      ids << Well.config.element_separator << identifier
      ids.join
    end
  end
end
