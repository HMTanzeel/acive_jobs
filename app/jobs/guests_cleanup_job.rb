require 'resque/tasks'
require 'resque/scheduler/tasks'

class GuestsCleanupJob < ApplicationJob
  queue_as :low_priority
  self.queue_adapter = :resque

  def perform(*args)
    # Do something later
  end

  private
    def around_cleanup
      yield
    end
end
