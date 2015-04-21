# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'well/version'

Gem::Specification.new do |spec|
  spec.name          = 'well'
  spec.version       = Well::VERSION
  spec.authors       = ['Joe Corcoran']
  spec.email         = ['joecorcoran@gmail.com']
  spec.summary       = 'BEM stuff for ActionView'
  spec.homepage      = 'https://github.com/joecorcoran/well'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*'] + ['README.md', 'LICENSE.txt']
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview', '~> 4.2'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'oga', '~> 0.3'
end
