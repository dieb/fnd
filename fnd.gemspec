# encoding: utf-8

require_relative('lib/fnd/version')

Gem::Specification.new do |s|
  s.name        = 'fnd'
  s.version     = Fnd::VERSION
  s.authors     = ["Andre Dieb Martins"]
  s.email       = ["andre.dieb@gmail.com"]
  s.homepage    = 'https://github.com/dieb/fnd'
  s.summary     = ""
  s.description = ""
  s.license     = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- spec/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency('rake', '~> 10.3')
  s.add_development_dependency('rspec', '~> 3.0')

  s.add_dependency('term-ansicolor', '~> 1.3')
  s.add_dependency('grape', '~> 0.10')
  s.add_dependency('rack', '~> 1.6')
end
