# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'undelayed_job/version'

Gem::Specification.new do |s|
  s.name = %q{undelayed_job}
  s.version = Delayed::Backend::Undelayed::VERSION
  s.summary = 'undelaye delayed_job'
  s.add_dependency 'delayed_job'
  s.add_development_dependency 'rspec'
  s.files        = Dir.glob("{lib}/**/*")
  s.require_path = 'lib'
end
