# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_ext/version'

Gem::Specification.new do |spec|
  spec.name          = "string_ext"
  spec.version       = StringExt::VERSION
  spec.authors       = ["Matthias Seelig"]
  spec.email         = ["matthias.seelig@ymail.com"]
  spec.description   = %q{Extends ruby core class String with #to_bool }
  spec.summary       = %q{Description WIP}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
