class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
#  Devise::Mailer.confirmation_instructions(@user).deliver_later
end
