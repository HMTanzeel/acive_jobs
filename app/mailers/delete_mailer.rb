class DeleteMailer < ApplicationMailer
  def delete_book_email
    @book = params[:author]

    mail(to: 'mtanzeel6363@gmail.com', subject: 'Deletion of Book')
  end
end
