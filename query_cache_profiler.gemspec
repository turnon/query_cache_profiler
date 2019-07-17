# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'query_cache_profiler/version'

Gem::Specification.new do |spec|
  spec.name          = "query_cache_profiler"
  spec.version       = QueryCacheProfiler::VERSION
  spec.authors       = ["袁志鹏"]
  spec.email         = ["yuanzp@reocar.com"]

  spec.summary       = %q{query_cache_profiler}
  spec.description   = %q{query_cache_profiler}
  spec.homepage      = "https://github.com/turnon/query_cache_profiler"
  spec.license       = "MIT"

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
