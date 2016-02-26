require 'singleton'

module Well
  # Singleton class which holds configuration.
  class Config
    include Singleton

    attr_accessor :element_separator, :modifier_separator

    # Initalizes default values for component separators
    # based on recommendations from the BEM spec.
    def initialize
      @element_separator  = '__'
      @modifier_separator = '--'
    end
  end

  # Allows access to the {Config} singleton object.
  # @return [Config]
  def self.config
    Config.instance
  end
end
