class ApplicationMailer < ActionMailer::Base
  default from: 'infoshosting@gmail.com'
  layout 'mailer'
  
  def send_email(candidat)
    @candidat = candidat
    mail(to: @candidat.email, subject: 'Sample Email')
  end
end
