require 'spec_helper'
require 'well'

describe Well do
  include Well::DSL

  specify 'block contains element' do
    output = block(:div, 'container') do
      element(:p, 'intro') { 'Hello' }
    end

    expect(output).to match_html(
      %Q{
        <div class="container">
          <p class="container__intro">Hello</p>
        </div>
      }
    )
  end

  specify 'block has modifier' do
    output = block(:section, 'sidebar', modifier: 'left')

    expect(output).to match_html(
      %Q{<section class="sidebar--left"></section>}
    )
  end

  specify 'element has modifier' do
    output = block(:div, 'popup') do
      element(:button, 'sign-up', modifier: 'green') { 'Sign up' }
    end

    expect(output).to match_html(
      %Q{
        <div class="popup">
          <button class="popup__sign-up--green">Sign up</button>
        </div>
      }
    )
  end

  specify 'nested elements' do
    output = block(:article, 'blog-post') do
      element(:header, 'splash') do
        element(:h1, 'splash-title') do
          concat('My blog post')
          concat(element(:span, 'splash-icon'))
        end
      end
    end

    expect(output).to match_html(
      %Q{
        <article class="blog-post">
          <header class="blog-post__splash">
            <h1 class="blog-post__splash-title">
              My blog post
              <span class="blog-post__splash-icon"></span>
            </h1>
          </header>
        </article>
      }
    )
  end

  specify 'merged classes' do
    output = block(:div, 'wrapper', class: ['foo', 'bar'])

    expect(output).to match_html(
      %Q{<div class="foo bar wrapper"></div>}
    )
  end
end
