# Well

BEM stuff for ActionView.

[![Build](https://travis-ci.org/tape-tv/well.svg?branch=master)](https://travis-ci.org/tape-tv/well)
[![Docs](https://inch-ci.org/github/tape-tv/well.svg?branch=master)](https://inch-ci.org/github/tape-tv/well)
[![Gem](https://badge.fury.io/rb/well.svg)](https://rubygems.org/gems/well)

## Usage

Use the DSL in your views. The following view...

```erb
<%= block :div, 'container' do %>
  Text
  <%= element :p, 'foreword' do %>
    More text
  <% end %>
<% end %>
```

...produces this HTML.

```html
<div class="container">
  Text
  <p class="container__foreword">
    More text 
  </p>
</div>
```

For more examples, including working with modifiers, see
[the docs](http://www.rubydoc.info/github/tape-tv/well/master).

## License

MIT.

## Contribution

Contributions welcome! Create a pull request and we'll get back to you as soon as
possible. Open an issue to discuss anything big.

This project has a code of conduct, found in the root of this repo. Please read it
before contributing.

