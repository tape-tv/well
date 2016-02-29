# @author Joe Corcoran <joe@corcoran.io>
#
# Well is a BEM DSL for ActionView. It helps you to keep your view
# code clean when dealing with complex BEM classes.
#
# @example This view code...
#   <%= block :div, 'container' do %>
#     Text
#     <%= element :p, 'foreword' do %>
#       More text
#     <% end %>
#   <% end %>
# @example ...produces this HTML.
#   <div class="container">
#     Text
#     <p class="container__foreword">
#       More text 
#     </p>
#   </div>
# @example Modifiers result in two classes being added to the HTML tags.
#   <%= block :div, 'container', modifier: 'red' do %>
#     Text
#     <%= element :p, 'foreword', modifier: 'small' do %>
#       More text
#     <% end %>
#   <% end %>
#
#   <div class="container container--red">
#     Text
#     <p class="container__foreword container__foreword--small">
#       More text 
#     </p>
#   </div>
 
module Well
end

require 'well/block'
require 'well/config'
require 'well/dsl'
require 'well/element'
require 'well/version'

ActionView::Base.send(:include, Well::DSL)
