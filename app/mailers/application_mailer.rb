class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  :subject => "User contact form",
  :to => "contact@sid3car.com",
  layout 'mailer'
end
