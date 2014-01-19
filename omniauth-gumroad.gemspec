# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-gumroad/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "omniauth-gumroad"
  gem.version     = OmniAuth::Gumroad::VERSION
  gem.authors     = ["Maxwell Elliott"]
  gem.email       = ["maxwell@gumroad.com"]
  gem.homepage    = "https://github.com/gumroad/omniauth-gumroad"
  gem.summary     = %q{OmniAuth strategy for Gumroad}
  gem.description = %q{OmniAuth strategy for Gumroad}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end