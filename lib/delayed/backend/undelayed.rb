module Delayed
  module Backend
    module Undelayed
      class Job
        include Delayed::Backend::Base
        attr_accessor :payload_object
        def initialize(payload_object)
          self.payload_object = payload_object
        end
        def self.create(args)
          job = self.new(args[:payload_object])
          job.invoke_job
          job
        end
      end
    end
  end
end
