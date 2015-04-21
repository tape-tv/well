require 'singleton'

module Well
  class Config
    include Singleton

    attr_accessor :element_separator, :modifier_separator

    def initialize
      @element_separator  = '__'
      @modifier_separator = '--'
    end
  end

  def self.config
    Config.instance
  end
end
