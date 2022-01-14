class DeleteMailerJob < ApplicationJob
  queue_as :default

  def perform(job_mail)
    DeleteMailer.delete_book_email(job_mail).deliver_later(wait: 10.seconds)
    # DeleteMailer.send_email(job_mail).deliver_later(wait: 10.seconds)
  end
end
