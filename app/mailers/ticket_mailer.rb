class TicketMailer < ActionMailer::Base
  default from: 'tinam03@yahoo.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.issue_confirmation.subject
  #

  def issue_confirmation(ticket)
    mail to: ENV["EMAIL"], subject: "You've got mail."
  end
end

