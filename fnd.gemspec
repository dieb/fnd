# encoding: utf-8

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'fnd/version'

Gem::Specification.new do |s|
  s.name        = 'fnd'
  s.version     = Fnd::VERSION
  s.authors     = ["Andre Dieb Martins"]
  s.email       = ["andre.dieb@gmail.com"]
  s.homepage    = 'https://github.com/dieb/fnd'
  s.summary     = ""
  s.description = ""
  s.license     = 'MIT'

  s.files = Dir['{bin,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path = 'lib'

  s.add_development_dependency('rake', '~> 10.3')
  s.add_development_dependency('rspec', '~> 3.0')

  s.add_dependency('term-ansicolor', '~> 1.3')
  s.add_dependency('grape', '~> 0.10')
  s.add_dependency('rack', '~> 1.6')
end
