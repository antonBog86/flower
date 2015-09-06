class ApplicationMailer < ActionMailer::Base
  default from: Settings.owner_email
  layout 'mailer'
end
