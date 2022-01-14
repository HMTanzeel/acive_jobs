class DeleteMailerJob < ApplicationJob
  queue_as :default

  def perform(job_mail)
    DeleteMailer.set(wait: 10.seconds).send_email(job_mail).deliver_later
  end
end
