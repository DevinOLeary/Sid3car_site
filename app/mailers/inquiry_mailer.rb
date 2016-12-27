class InquiryMailer < ApplicationMailer

    default from: "<djodev.tester@gmail.com>"
    default to: "Tester <djodev.tester@gmail.com>"

    def new_inquiry(inquiry)
      @inquiry = inquiry

      mail subject: "Message from #{inquiry.name}"
    end

end
