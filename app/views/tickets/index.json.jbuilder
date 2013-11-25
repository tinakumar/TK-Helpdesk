json.array!(@tickets) do |ticket|
  json.extract! ticket, :email, :subject, :issue, :response
  json.url ticket_url(ticket, format: :json)
end
