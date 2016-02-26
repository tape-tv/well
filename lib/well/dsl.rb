module Well
  # The module used as the entry point to the Well DSL.
  # This is included in ActionView::Base.
  module DSL
    # Creates a new {Block}, passing all arguments through.
    # @yield The content block is evaluated in the context of the new Block
    def block(*args, &content)
      Block.new(*args).evaluate(&content)
    end
  end
end
