class ReportMailer < ApplicationMailer
  default from: 'admin@rschool.com', template_path: 'mailers/reports'


  def reports_mailer
    mail(to: 'swex99@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
