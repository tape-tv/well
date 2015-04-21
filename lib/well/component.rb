require 'action_view'

module Well
  module Component
    include ActionView::Helpers, ActionView::Context

    def output_buffer
      @output_buffer ||= ActionView::OutputBuffer.new
    end

    def other_classes
      @other_classes ||= @opts.fetch(:class) { [] }
    end

    def output_classes
      @output_classes ||= (other_classes << compiled_identifier)
    end

    def modifier
      @modifier ||= @opts[:modifier]
    end

    def evaluate(&content)
      result = instance_eval(&content) if block_given?
      output(result)
    end

    def output(content)
      content_tag(@tag_name, content, class: output_classes)
    end

    def compiled_identifier
      raise NotImplementedError
    end

    def element(*args, &content)
      Element.new(base, *args).evaluate(&content)
    end
  end
end
