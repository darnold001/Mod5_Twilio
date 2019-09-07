# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

account_sid = 'AC67b5968ae05663ab7758ec034601d049'
auth_token = 'fed6af5c149c1cf4872b461d11b8e8f2'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+17209437707' # Your Twilio number
to = '+13035199508' # Your mobile phone number

client.api.account.messages.create(
from: from,
to: to,
body: "Hey friend!"
)