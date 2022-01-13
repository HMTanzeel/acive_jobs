class DeleteMailer < ApplicationMailer
  default from: 'mtanzeel6363@gmail.com'
  def delete_book_email
    @book_title = params[:book_title]
    @author = params[:author]
    @price = params[:price]
    @prints = params[:prints]

    mail(to: 'mtanzeel6363@gmail.com', subject: 'Deletion of Book')
  end
end
