# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'gemplate/version'

Gem::Specification.new do |spec|
  spec.name          = 'gemplate'
  spec.version       = Gemplate::VERSION
  spec.authors       = ['Florian Dejonckheere']
  spec.email         = ['florian@floriandejonckheere.be']
  spec.summary       = 'Gem template'
  spec.description   = 'A template for gems'
  spec.homepage      = 'https://github.com/floriandejonckheere/gemplate'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rubocop', '~> 0.48'
end
