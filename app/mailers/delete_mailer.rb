class DeleteMailer < ApplicationMailer
  default from: 'mtanzeel6363@gmail.com'
  
  def delete_book_email
    @book_title = params[:book_title]
    @author = params[:author]
    @mail = params[:mail]
    @price = params[:price]
    @prints = params[:prints]
    job_mail = params[:mail]

    job_mail  = job_mail.present? ? job_mail : "ali.ammaar@dev.com"

    mail(to: job_mail, subject: 'Deletion of Book')
    
  end
  

  # def send_email(email)
  #   email  = email.present? ? email : "ali.ammaar@dev.com"

  #   mail(to: email, subject: 'Deletion of Book')
  # end

end