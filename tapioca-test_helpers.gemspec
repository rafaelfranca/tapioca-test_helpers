# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tapioca/test_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "tapioca-test_helpers"
  spec.version       = Tapioca::TestHelpers::VERSION
  spec.authors       = ["Rafael Mendonça França", "Carlos Antonio da Silva"]
  spec.email         = ["opensource@plataformatec.com.br"]
  spec.summary       = %q{A set of test helper to be used in Rails applications}
  spec.description   = %q{Test helpers for Rails applications}
  spec.homepage      = "https://github.com/rafaelfranca/tapioca-test_helpers"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", '>= 3', '< 5'
end
