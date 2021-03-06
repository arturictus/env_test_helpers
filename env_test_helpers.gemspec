# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'env_test_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "env_test_helpers"
  spec.version       = EnvTestHelpers::VERSION
  spec.authors       = ["Artur Pañach"]
  spec.email         = ["arturictus@gmail.com"]
  spec.summary       = %q{Helps to handle env vars in tests.}
  spec.description   = %q{EnvTestHelpers is a collection of helpers to work
  with environment variables in tests.
  Right now is only working with Rspec.}
  spec.homepage      = "https://github.com/arturictus/env_test_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
