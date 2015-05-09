# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geojson_model/version'

Gem::Specification.new do |spec|
  spec.name          = "geojson_model"
  spec.version       = GeojsonModel::VERSION
  spec.authors       = ["Philippe Dionne"]
  spec.email         = ["dionne.phil@gmail.com"]

  spec.summary       = %q{Geojson as a model.}
  spec.description   = %q{Geojson as a model.}
  spec.homepage      = "http://github.com/can-explore/geojson_model"
  spec.license       = "BSD 3-Clause"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.0.0"
  spec.add_dependency "activemodel", ">= 3.0.0"
  spec.add_dependency "virtus", "~> 1.0.5"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
end
