# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'git-ssh-wrapper/version'

Gem::Specification.new do |s|
  s.name        = "git-ssh-wrapper"
  s.version     = GitSSHWrapper::VERSION
  s.authors     = ["Martin Emde"]
  s.email       = ["martin.emde@gmail.com"]
  s.homepage    = "http://github.org/martinemde/git-ssh-wrapper"
  s.summary     = %q{Generate a permissive GIT_SSH wrapper script on the fly}
  s.description = %q{Generate a permissive GIT_SSH wrapper script using a private key string or file for use with git commands that need ssh.}
  s.license = 'MIT'

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", '~> 2.0'
  s.add_development_dependency "bundler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
