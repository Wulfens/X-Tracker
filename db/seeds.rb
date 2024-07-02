# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "x"

x_credentials = {
  api_key:             ENV['X_API_KEY'],
  api_key_secret:      ENV['X_API_KEY_SECRET'],
  access_token:        ENV['X_ACCESS_TOKEN'],
  access_token_secret: ENV['X_ACCESS_TOKEN_SECRET'],
}

# Print credentials for debugging (do not use in production)
puts "API Key: #{ENV['X_API_KEY']}"
puts "API Key Secret: #{ENV['X_API_KEY_SECRET']}"
puts "Access Token: #{ENV['X_ACCESS_TOKEN']}"
puts "Access Token Secret: #{ENV['X_ACCESS_TOKEN_SECRET']}"

# Initialize an X API client with your OAuth credentials
begin
  # x_client = X::Client.new(base_url: "https://api.twitter.com/1.1/", **x_credentials)
  x_client = X::Client.new(**x_credentials)
rescue => e
  puts "Error initializing client: #{e.message}"
end

# Get data about yourself
begin
  response = x_client.get("/2/users/me")
  puts "Response: #{response}"
rescue => e
  puts "Error making API call: #{e.message}"
end
