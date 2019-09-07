# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
# config.hosts << "2e65dbfc.ngrok.io"
Rails.application.configure do
    config.hosts << "2e65dbfc.ngrok.io"
    config.hosts.clear
  end