# Undelayed::Job

undelayed_job provides a database-less backend to delayed_job:http://rubygems.org/gems/delayed_job, executing jobs immediately without the need for a sparate worker.

This is mostly usefull for development and testing environments.

## Usage

Install and require the gem, then tell delayed_job use the backend

    Delayed::Worker.backend = :undelayed

e.g. in rails via

    config.gem 'undelayed_job'
    …
    config.after_initialize do
      Delayed::Worker.backend = :undelayed
    end

in your `environments/development.rb`
