module Well
  module DSL
    def block(*args, &content)
      Well::Block.new(*args).evaluate(&content)
    end
  end
end
