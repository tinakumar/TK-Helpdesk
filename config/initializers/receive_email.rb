require 'sinatra'
require 'json'
require 'logger'

logger = Logger.new(STDOUT)

class Comment
  attr_accessor :attributes

  def self.create_from_inbound_hook(message)
    self.new(:text => message["TextBody"],
             :user_email => message["From"],
             :discussion_id => message["MailboxHash"])
  end

  def initialize(attributes={})
    @attributes = attributes
  end
end

post '/inbound' do
  request.body.rewind
  comment = Comment.create_from_inbound_hook(JSON.parse(request.body.read))
  logger.info comment.inspect
end
