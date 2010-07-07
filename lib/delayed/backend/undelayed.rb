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
        def self.find_available(worker_name, limit = 5, max_run_time = Worker.max_run_time)
          []
        end
      end
    end
  end
end
