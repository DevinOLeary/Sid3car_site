class ApplicationMailer < ActionMailer::Base
  default from: %("#{name}" <#{email}>)
  :subject => "User contact form",
  :to => "deoleary@indiana.edu",
  layout 'mailer'
end
