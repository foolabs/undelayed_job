$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'rubygems'
require 'bundler'
require 'spec'

require 'active_support'
require 'active_support/core_ext'
require 'delayed_job'
require 'sample_jobs'
require 'undelayed_job'

