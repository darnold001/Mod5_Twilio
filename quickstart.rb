require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message 'Ahoy! Thanks so much for your message.'
  end

  content_type 'text/xml'
  twiml.text
end
TWIML
<?xml version="1.0" encoding="UTF-8"?>
<Response>
    <Message>
        Ahoy! Thanks so much for your message.
    </Message>
</Response>