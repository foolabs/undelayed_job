require 'spec_helper'

describe Delayed::Backend::Undelayed::Job do
  subject {Delayed::Backend::Undelayed::Job}
  it {should respond_to :enqueue}

  it 'should execute the job immediately' do
    task = SimpleJob.new
    task.should_receive(:perform)
    subject.enqueue task
  end

  it do
    subject.find_available('worker').should be_empty
  end
end

