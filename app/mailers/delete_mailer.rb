class DeleteMailer < ApplicationMailer
  default from: 'mtanzeel6363@gmail.com'
  
  def delete_book_email
    @book_title = params[:book_title]
    @author = params[:author]
    @mail = params[:mail]
    @price = params[:price]
    @prints = params[:prints]
    job_mail = params[:mail]

    mail(to: job_mail, subject: 'Deletion of Book')
    
  end
end
  # def delete_book_email
  #   attrs = params[:attrs]
  #   p attrs
  #   byebug

  #   mail(to: @mail, subject: 'Deletion of Book')
  # end