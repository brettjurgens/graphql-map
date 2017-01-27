# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/map/version'

Gem::Specification.new do |spec|
  spec.name          = "graphql-map"
  spec.version       = Graphql::Map::VERSION
  spec.authors       = ["Brett Jurgens"]
  spec.email         = ["brett@brettjurgens.com"]

  spec.summary       = "Adds a 'Map' scalar type for use with graphql-ruby"
  spec.homepage      = "http://github.com/brettjurgens/graphql-map"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "graphql", "> 0.8", "< 2"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
