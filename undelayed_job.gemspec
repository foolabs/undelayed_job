# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'undelayed_job/version'

Gem::Specification.new do |s|
  s.authors       = ['David Schneider', 'Stephan Zalewski']
  s.description   = %{Undelayed_job jobs provides a database-less backand for delayed_job that executes immediately without a separate worker process.}
  s.email         = 'hello@foo-labs.com'
  s.homepage      = 'https://github.com/foolabs/undelayed_job'
  s.name          = %q{undelayed_job}
  s.version       = Delayed::Backend::Undelayed::VERSION
  s.summary       = 'undelaye delayed_job'
  s.add_dependency 'delayed_job'
  s.add_development_dependency 'rspec'
  s.files         = Dir.glob("{lib,spec}/**/*")
  s.require_path  = 'lib'
end
