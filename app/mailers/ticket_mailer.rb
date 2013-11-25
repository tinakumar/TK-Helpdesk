class TicketMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.issue_confirmation.subject
  #

   def issue_confirmation
    @greeting = "Hi"
    mail to: ticket.email, subject: "We've Received your issue."
  end
end
end
