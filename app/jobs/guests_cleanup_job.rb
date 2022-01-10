class GuestsCleanupJob < ApplicationJob
  queue_as :low_priority
  self.queue_adapter = :resque

  def perform(*args)
    # Do something later
  end
end
