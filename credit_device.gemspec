# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "credit_device/version"

Gem::Specification.new do |spec|
  spec.name          = "credit_device"
  spec.version       = CreditDevice::VERSION
  spec.authors       = ["Rodrigo Barreto"]
  spec.email         = ["rodrigonbarreto@gmail.com"]

  spec.summary       = %q{A gem to check credit device}
  spec.description   = %q{credit_device project}
  spec.homepage      = "https://github.com/rodrigonbarreto/credit_device"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rest-client", "~> 2.0"
end
