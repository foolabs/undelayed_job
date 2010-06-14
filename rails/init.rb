require File.join(File.dirname(__FILE__), *%w[.. lib undelayed])
Delayed::Worker.backend = :undelayed
