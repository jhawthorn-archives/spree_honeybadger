# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_honeybadger/version'

Gem::Specification.new do |spec|
  spec.name          = "spree_honeybadger"
  spec.version       = SpreeHoneybadger::VERSION
  spec.authors       = ["John Hawthorn"]
  spec.email         = ["john@freerunningtechnologies.com"]
  spec.description   = %q{Improved honeybadger error reporting for spree}
  spec.summary       = %q{Gives details of current_spree_user and current_order}
  spec.homepage      = "https://github.com/jhawthorn/spree_honeybadger"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "honeybadger"
  spec.add_dependency "spree_core"

  spec.add_development_dependency "spree"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"
end
