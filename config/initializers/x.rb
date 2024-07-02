require "x"

x_credentials = {
  api_key:             ENV['X_API_KEY'],
  api_key_secret:      ENV['X_API_KEY_SECRET'],
  access_token:        ENV['X_ACCESS_TOKEN'],
  access_token_secret: ENV['X_ACCESS_TOKEN_SECRET'],
}

# Initialize an X API client with your OAuth credentials
XClient = X::Client.new(**x_credentials)