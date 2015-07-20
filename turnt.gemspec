# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turnt/version'

Gem::Specification.new do |spec|
  spec.name          = 'turnt'
  spec.version       = Turnt::VERSION
  spec.authors       = ['Macklin Underdown']
  spec.email         = ['macklinu@gmail.com']

  spec.summary       = Turnt::DESCRIPTION
  spec.homepage      = 'https://github.com/macklinu/turnt'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = 'turn'
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor', '0.19.1'
  spec.add_runtime_dependency 'git'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 0.32.1'
end
