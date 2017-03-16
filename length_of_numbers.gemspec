# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'length_of_numbers'

Gem::Specification.new do |spec|
  spec.name          = "length_of_numbers"
  spec.version       = LengthOfNumbers.version
  spec.authors       = ["Dimas J. Taniawan"]
  spec.email         = ["dimazniawan@gmail.com"]

  spec.summary       = %q{get length of numbers}
  spec.description   = %q{get length of numbers}
  spec.homepage      = "https://github.com/dimasjt/length_of_numbers"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
