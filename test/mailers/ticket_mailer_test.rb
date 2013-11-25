require 'test_helper'

class TicketMailerTest < ActionMailer::TestCase
  test "issue_confirmation" do
    mail = TicketMailer.issue_confirmation
    assert_equal "Issue confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
