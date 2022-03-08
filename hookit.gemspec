# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hookit/version'

Gem::Specification.new do |spec|
  spec.name          = "hookit"
  spec.version       = Hookit::VERSION
  spec.authors       = ["Tyler Flint"]
  spec.email         = ["tylerflint@gmail.com"]
  spec.summary       = %q{A template, build, and configuration framework, primarily intended for CI/CD scenarios where generating configuration files, code, and running tasks like compilation and deployment are necessary.}
  spec.description   = %q{A template, build, and configuration framework.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'tilt'
  spec.add_dependency 'erubis'
  spec.add_dependency 'oj'
  spec.add_dependency 'multi_json', '>= 1.3'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
