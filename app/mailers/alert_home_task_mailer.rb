class AlertHomeTaskMailer < ApplicationMailer
  default from: 'admin@rschool.com', template_path: 'mailers/alert_home_task'

  def reports_mailer
    mail(to: 'swex99@gmail.com', subject: 'Не забудьте!!')
  end
end
