# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_error_serializer/version'

Gem::Specification.new do |spec|
  spec.name          = 'json_error_serializer'
  spec.version       = JsonErrorSerializer::VERSION
  spec.authors       = ['Vadim Stroganov']
  spec.email         = ['vadimstroganov@gmail.com']

  spec.summary       = 'Convenient return errors to the API as JSON'
  spec.homepage      = 'https://github.com/Strollager/error_json_serializer.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
end
