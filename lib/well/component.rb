require 'action_view'

module Well
  # @abstract
  #
  # Included by both {Block} and {Element}, this is the module
  # which contains the shared fuctionality of all BEM components.
  module Component
    include ActionView::Helpers

    attr_reader :identifier

    # Must be defined since many methods from ActionView::Helpers.
    # expect to be able to write to an ActionView::OutputBuffer.
    # @return [ActionView::OutputBuffer]
    def output_buffer
      @output_buffer ||= ActionView::OutputBuffer.new
    end

    # Extracts BEM modifier from options.
    # @return [String]
    def modifier
      @modifier ||= @opts[:modifier]
    end

    # Extracts other non-BEM CSS classes from options.
    # @return [Array<String>]
    def other_classes
      @other_classes ||= @opts.fetch(:class) { [] }
    end

    # Combines all CSS classes for output.
    # @return [Array<String>]
    def output_classes
      @output_classes ||= (
        (other_classes << compiled_identifier << modified_identifier).compact
      )
    end

    # Used by the DSL to build nested BEM components.
    # @yield Content block is evaluated in the context of self.
    # @return [String]
    def evaluate(&content)
      result = instance_eval(&content) if block_given?
      content_tag(@tag_name, result, class: output_classes)
    end

    # @abstract
    def compiled_identifier
      raise NotImplementedError
    end

    # Adds BEM modifier if provided.
    # @return [String]
    def modified_identifier
      return unless modifier
      "#{compiled_identifier}#{Well.config.modifier_separator}#{modifier}"
    end

    # DSL method used to add a nested element in the context of self.
    # Both block and element components may contain further nested elements.
    # @return [Element]
    def element(*args, &content)
      Element.new(base, *args).evaluate(&content)
    end
  end
end
