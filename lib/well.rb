# @author Joe Corcoran <joe@corcoran.io>
# Namespace module.
module Well
end

require 'well/block'
require 'well/config'
require 'well/dsl'
require 'well/element'
require 'well/version'

ActionView::Base.send(:include, Well::DSL)
