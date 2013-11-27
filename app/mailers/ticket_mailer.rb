class TicketMailer < ActionMailer::Base
  default from: ENV["EMAIL"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.issue_confirmation.subject
  #

  def issue_confirmation(ticket)
    mail to: ENV["POSTMARK_EMAIL"], subject: "You've got mail."
  end
end

