class AlertHomeTask
  include Sidekiq::Worker

  def perform(*args)
    AlertHomeTaskMailer.reports_mailer.deliver if HomeTask.alert.count > 0
  end
end