# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'garuda_metric/version'

Gem::Specification.new do |spec|
  spec.name          = "garuda_metric"
  spec.version       = GarudaMetric::VERSION
  spec.authors       = ["Gilang Mahardhika"]
  spec.email         = ["gilangmahardhika@gmail.com"]
  spec.description   = %q{Simple metric for rails}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "json", "1.8.0"
  # spec.add_development_dependency "mongoid", '~> 3.0.0'
  spec.add_development_dependency "rails", '~> 3.2.13'
  spec.add_development_dependency "mongoid", '3.1.4'
end
