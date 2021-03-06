# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'well/version'

Gem::Specification.new do |spec|
  spec.name          = 'well'
  spec.version       = Well::VERSION
  spec.authors       = ['Joe Corcoran']
  spec.email         = ['opensource@tape.tv', 'joe@corcoran.io']
  spec.summary       = 'BEM stuff for ActionView'
  spec.homepage      = 'https://github.com/tape-tv/well'
  spec.license       = 'MIT'
  spec.description   = 'Helpers for working with BEM CSS classes when building Rails views.'

  spec.files         = Dir['lib/**/*'] + ['README.md', 'LICENSE.txt']
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview', '~> 4.2'

  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'oga', '~> 0.3'
  spec.add_development_dependency 'yard', '~> 0.8'
end
