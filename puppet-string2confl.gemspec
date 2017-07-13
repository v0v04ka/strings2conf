# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "puppet/string2confl/version"

Gem::Specification.new do |spec|
  spec.name          = "puppet-string2confl"
  spec.version       = Puppet::String2confl::VERSION
  spec.authors       = ["Vladimir Tyshkevich"]
  spec.email         = ["vtyshkevich@iponweb.net"]

  spec.summary       = %q{Perform Confluence Storage XHTML from puppet strings}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
