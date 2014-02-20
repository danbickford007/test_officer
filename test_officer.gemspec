# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_officer/version'

Gem::Specification.new do |spec|
  spec.name          = "test_officer"
  spec.version       = TestOfficer::VERSION
  spec.authors       = ["Dan Bickford"]
  spec.email         = ["danbickford007@yahoo.com"]
  spec.description   = %q{This gem watches your project for changes and runs specs accordingly.}
  spec.summary       = %q{Watching your project for saves, creates or deletes on files...this gem will either run the file altered or will find the specific spec file to run. }
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
  spec.add_dependency "fssm"
  spec.add_dependency "rspec"
  spec.add_dependency "colorize"

end
