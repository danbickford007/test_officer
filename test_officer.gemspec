# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_officer/version'

Gem::Specification.new do |spec|
  spec.name          = "test_officer"
  spec.version       = TestOfficer::VERSION
  spec.authors       = ["Write your name"]
  spec.email         = ["danbickford007@yahoo.com"]
  spec.description   = %q{Write a gem description}
  spec.summary       = %q{Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fssm"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "colorize"

end
