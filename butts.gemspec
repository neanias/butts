# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'butts/version'

Gem::Specification.new do |spec|
  spec.name          = 'butts'
  spec.version       = Butts::VERSION
  spec.authors       = ['William Mathewson']
  spec.email         = ['wncmathewson@me.com']
  spec.summary       = 'A gem to interact with butts.so for CLI fart noises'
  spec.homepage      = 'https://github.com/neanias/butts'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'httparty', '~> 0.13'
end
