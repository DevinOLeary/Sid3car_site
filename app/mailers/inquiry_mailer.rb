class InquiryMailer < ApplicationMailer
  default from: "djodev.tester@gmail.com"
  def inquiry_sent
    mail(to: "djodev.tester@gmail.com", subject: "<%= name %> has a question!")

  end

end
