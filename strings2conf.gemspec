lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strings2conf/version'

Gem::Specification.new do |spec|
  spec.name    = 'strings2conf'
  spec.version = Strings2conf::VERSION
  spec.authors = ['Vladimir Tyshkevich', 'Eugene Piven']
  spec.email   = ['vtyshkevich@iponweb.net', 'epiven@iponweb.net']

  spec.summary  = 'Convert puppet-strings JSON output to Confluence storage format'
  spec.homepage = 'https://github.com/pegasd/strings2conf'
  spec.license  = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'puppet-strings', '~> 1.0'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
